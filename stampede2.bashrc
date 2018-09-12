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
export TAU_OPTIONS="-optRevert"

module load phdf5
module load boost
module load papi
module load cmake
# source ~/.modules
echo `module list`
