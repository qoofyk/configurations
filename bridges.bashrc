export PATH=~/envs/ADIOSroot/bin/:~/bin:$PATH
export LD_LIBRARY_PATH=${HOME}/envs/Flexpath/lib/:${LD_LIBRARY_PATH}

export TAU_MAKEFILE=/home/fli5/envs/tau_bundle/tau/x86_64/lib/Makefile.tau-papi-ompt-mpi-pdt-openmp
export TAU_OPTIONS=-optRevert
export TAU_TRACE=1

export CMTransport=nnti


# added by Anaconda3 4.2.0 installer
export PATH="/home/fli5/envs/tau_bundle/tau/x86_64/bin:/home/fli5/envs/tau_bundle/pdt/x86_64/bin:/home/lifeng/tools/anaconda/bin:$PATH"

source ~/.modules
echo `module list`
