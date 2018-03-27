# export PATH=~/envs/ADIOSroot/bin/:~/bin:$PATH
#export LD_LIBRARY_PATH=${HOME}/envs/Flexpath/lib/:${LD_LIBRARY_PATH}
alias mysqueue="squeue -u $USER -o '%.7i %.9P %.8j %.8u %.2t %.9M %.6D %R %.8A %.4C %.10m %.20E' "

export TAU_MAKEFILE=/home/fli5/envs/tau_bundle/tau/x86_64/lib/Makefile.tau-papi-ompt-mpi-pdt-openmp
export TAU_OPTIONS="-optRevert"
export PATH="/home/fli5/envs/tau_bundle/tau/x86_64/bin:/home/fli5/envs/tau_bundle/pdt/x86_64/bin:/home/lifeng/tools/anaconda/bin:$PATH"

export PATH=$PATH:/home/fli5/envs/remora/remora-1.8.2/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/fli5/envs/remora/remora-1.8.2/lib
export REMORA_BIN=/home/fli5/envs/remora/remora-1.8.2/bin

export WORK=/pylon2/ac561jp/fli5
export PATH=$WORK/software/install/include:$WORK/software/install/bin:$PATH
export LD_LIBRARY_PATH=$WORK/software/install/lib:$LD_LIBRARY_PATH

export DECAF_PREFIX=$WORK/software/install  #instead set it in job file instead
#export DECAF_PREFIX=$WORK/software/install_tau #instead set it in job file instead

unset USE_DSPACES

#export TAU_OPTIONS="-optRevert -optAppCC=mpiicc -optAppCXX=mpiicpc -optAppF90=mpiifort"

#module load tau
#module load phdf5

module load cmake
#module load ddt
module load git

if [ x"$USE_DSPACES" = "x" ];then
    module load intel

else
# to make dspace work, gcc and mvapich should be used in bridges
    module unload intel
    module load mpi/gcc_mvapich
fi


# other wise i need to use icc and intelmpi
#source ~/.modules
echo `module list`
