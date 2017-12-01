# export PATH=~/envs/ADIOSroot/bin/:~/bin:$PATH
#export LD_LIBRARY_PATH=${HOME}/envs/Flexpath/lib/:${LD_LIBRARY_PATH}

export TAU_MAKEFILE=/home/fli5/envs/tau_bundle/tau/x86_64/lib/Makefile.tau-papi-ompt-mpi-pdt-openmp
export TAU_OPTIONS="-optRevert"
export PATH="/home/fli5/envs/tau_bundle/tau/x86_64/bin:/home/fli5/envs/tau_bundle/pdt/x86_64/bin:/home/lifeng/tools/anaconda/bin:$PATH"

#export TAU_OPTIONS="-optRevert -optAppCC=mpiicc -optAppCXX=mpiicpc -optAppF90=mpiifort"

#module load tau
#module load cmake
#module load ddt
module unload intel
module load git
module load mpi/gcc_mvapich

#source ~/.modules
echo `module list`
