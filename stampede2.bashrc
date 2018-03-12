# export PATH=~/envs/ADIOSroot/bin/:~/bin:$PATH
# export LD_LIBRARY_PATH=${HOME}/envs/Flexpath/lib/:${LD_LIBRARY_PATH}

## followed decaf instructions here https://bitbucket.org/tpeterka1/decaf/overview

export PATH=$WORK/software/install/include:$WORK/software/install/bin:$PATH
export LD_LIBRARY_PATH=$WORK/software/install/lib:$LD_LIBRARY_PATH

export DECAF_PREFIX=/work/04446/tg837458/stampede2/software/install
export LD_LIBRARY_PATH=/work/04446/tg837458/stampede2/software/install/lib:$LD_LIBRARY_PATH

export PATH=$HOME/bin:$PATH
export TAU_OPTIONS="-optRevert"

# source ~/.modules
echo `module list`
