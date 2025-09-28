import numpy as np

#data = np.loadtxt('airfoil.dat', skiprows=3)
data = np.loadtxt('airfoil_rotated.dat')

top = data[1:len(data)]

file = open('airfoil.geo', 'w')

for i in range(len(top)):

    point = 'Point(' + str(i+1) + ') = '
    coords = '{' + str(top[i][0]) + ', ' + str(top[i][1]) + ', ' + str(top[i][2]) + '};' + '\n'

    file.write(point+coords)

Line = 'Line(1) = {'

for i in range(len(top)):
    if not(i == len(top) - 1):
        Line = Line + str(i+1) + ', '
    else:
        Line = Line + str(i+1) + ', 1};'

file.write(Line)
file.close()
    
