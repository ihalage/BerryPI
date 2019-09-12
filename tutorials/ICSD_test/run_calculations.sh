
# This script calculates the spontaneous polarization of ferroelectric BaTiO3

# There's two parts of the calculation. 
	# 1) Polarization calculation of non-centrosymmetric polar structure. 
	# 2) Polarization calculation of a centrosymmetric non-polar reference structure

# The difference between these two values is the macroscopic spontaneous polarization


cd lambda1

init_lapw -b -vxc 13 -ecut -6 -numk 230 # initialize linearized augmented plane wave calculations

run_lapw

berrypi -k 6:6:6 # 6x6x6 grid is assumed here, we can change the grid size

cd ../lambda0

init_lapw -b -vxc 13 -ecut -6 -numk 230

run_lapw

berrypi -k 6:6:6

# cp * ../lambda0

# cd ../lambda0

# rm lambda1.struct

# rename_files lambda1 lambda0

# x kgen

# x dstart

# run_lapw

# berrypi -k 6:6:6