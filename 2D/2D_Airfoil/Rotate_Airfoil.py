import numpy as np

# Nx3 file: columns = x y z (z=0)
pts = np.loadtxt("airfoil.dat", skiprows=3)
x, y, z = pts[:,0], pts[:,1], pts[:,2]

# chord endpoints from x-extents (adjust if needed)
xLE, xTE = x.min(), x.max()

# pivot: quarter-chord at z=0
xp = xLE + 0.25*(xTE - xLE)
yp = 0.0
zp = 0.0

alpha_deg = -8.0             # desired AoA
alpha = np.deg2rad(alpha_deg)
ca, sa = np.cos(alpha), np.sin(alpha)

# translate -> rotate about z -> translate back
xr = xp + (x - xp)*ca - (y - yp)*sa
yr = yp + (x - xp)*sa + (y - yp)*ca
zr = z                      # unchanged (still zeros)

rot = np.column_stack([xr, yr, zr])
np.savetxt("airfoil_rotated.dat", rot, fmt="%.8f")

