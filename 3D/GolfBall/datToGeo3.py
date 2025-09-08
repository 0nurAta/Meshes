import math

# Parameters
ball_radius = 0.5
dimple_radius = 0.5 + 0.198752
dimple_diameter = 2 * 0.203752
dimple_depth = 0.004
number_of_dimples = 30
min_distance = 0.09  # Minimum distance between dimple centers
y_plane_offset = -0.047

# Calculate dimple positions using spherical Fibonacci lattice
def fibonacci_sphere(samples):
    points = []
    phi = math.pi * (3. - math.sqrt(5.))  # Golden angle in radians
    for i in range(samples):
        y = 1 - (i / float(samples - 1)) * 2  # y goes from 1 to -1
        radius = math.sqrt(1 - y * y)  # radius at y
        theta = phi * i
        x = math.cos(theta) * radius
        z = math.sin(theta) * radius
        points.append((x, y, z))
    return points

# Check for overlap
def no_overlap(new_point, existing_points, min_distance):
    for point in existing_points:
        distance = math.sqrt(
            (new_point[0] - point[0]) ** 2 +
            (new_point[1] - point[1]) ** 2 +
            (new_point[2] - point[2]) ** 2
        )
        if distance < min_distance:
            return False
    return True

# Generate positions and ensure no overlaps
all_positions = fibonacci_sphere(number_of_dimples)
positions = []
for pos in all_positions:
    scaled_pos = (pos[0] * dimple_radius, pos[1] * dimple_radius, pos[2] * dimple_radius)
    if no_overlap(scaled_pos, positions, min_distance):
        positions.append(scaled_pos)
    if len(positions) == number_of_dimples:
        break

# Create .geo file
with open("golf_ball_with_dimples.geo", "w") as f:
    f.write("// Gmsh script for golf ball with dimples\n")
    f.write("SetFactory(\"OpenCASCADE\");\n")
    f.write(f"Geometry.Tolerance = 1e-8;\n")  # Increase geometry precision
    f.write(f"Sphere(1) = {{0, 0, 0, {ball_radius}}};\n")
    
    # Add all dimples as spheres
    for i, (x, y, z) in enumerate(positions):
        f.write(f"Sphere({i+2}) = {{{x}, {y}, {z}, {dimple_diameter / 2}}};\n")
    
    # Combine all dimples using BooleanFragments
    f.write("BooleanFragments{ Volume{1}; Delete; }{ ")
    for i in range(len(positions)):
        f.write(f"Volume{{{i+2}}}; ")
    f.write("};\n")
    
    # Subtract dimples from the ball
    for i in range(len(positions)):
        f.write(f"BooleanDifference{{ Volume{{1}}; Delete;}}{{ Volume{{{i+2}}}; Delete; }};\n")

    f.write("Mesh 3;\n")  # Mesh the geometry

