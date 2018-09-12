# export PATH=~/envs/ADIOSroot/bin/:~/bin:$PATH
# export LD_LIBRARY_PATH=${HOME}/envs/Flexpath/lib/:${LD_LIBRARY_PATH}

## followed decaf instructions here https://bitbucket.org/tpeterka1/decaf/overview
#
#Feng Li's work
export FWORK=/work/04446/tg837458/stampede2

export PATH=$FWORK/software/install/include:$FWORK/software/install/bin:$PATH
export LD_LIBRARY_PATH=$FWORK/software/install/lib:$LD_LIBRARY_PATH

export DECAF_PREFIX=${FWORK}/software/install
export LD_LIBRARY_PATH=${FWORK}/software/install/lib:$LD_LIBRARY_PATH

export PATH=$HOME/bin:$PATH
#export TAU_OPTIONS="-optRevert -optTauSelectFile=/home1/04446/tg837458/Workspaces/General_Data_Broker/lbm_adios/configs/select.tau"
export TAU_SELECT_FILE=$HOME/configurations/configs/select.tau
export TAU_OPTIONS="-optRevert -optTauSelectFile=$TAU_SELECT_FILE"

BUILD_TAU=1
#unset BUILD_TAU

if [ BUILD_TAU ]; then
    PATH=/work/04446/tg837458/stampede2/envs/tau_bundle_2_27/pdt/x86_64//bin:$PATH
    PATH=/work/04446/tg837458/stampede2/envs/tau_bundle_2_27/tau_opempi_pthread/x86_64/bin:$PATH
    export TAU_MAKEFILE=/work/04446/tg837458/stampede2/envs/tau_bundle_2_27/tau_opempi_pthread/x86_64/lib/Makefile.tau-icpc-mpi-pthread-pdt-openmp
fi


module load phdf5
module load boost
module load papi
module load cmake
# source ~/.modules
echo `module list`
