# servers
source ~/configurations/hosts.conf
# some useful command
alias iuvpn="sudo openconnect --cafile /etc/ssl/certs/ca-certificates.crt --juniper https://vpn.iu.edu" # type sms in the password #2 and use the received sms code as password #2
alias setdpi="xrandr --output eDP-1 --auto --scale 0.8x0.8 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias setnodpi="xrandr --output eDP1 --auto --scale 1x1 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias start_pvserver_reversed="pvserver -rc --client-host=140.182.0.241"

# start tv server
# http://localhost:9981/
alias tvserver="systemctl start tvheadend"



# close firefox
alias kff="pkill -f firefox"

echo "USER                 RSS      PROCS" ;echo "-------------------- -------- -----" ;ps hax -o rss,user | awk '{rss[$2]+=$1;procs[$2]+=1;}END{for(user in rss) printf "%-20s %8.0f %5.0f\n", user, rss[user]/1024, procs[user];}' | sort -rnk2

# added by Anaconda3 4.2.0 installer
#export PATH=/home/lifeng/tools/ParaView-4.3.1-Linux-64bit/bin:/home/lifeng/tools/phantomjs-2.1.1-linux-x86_64/bin:/home/lifeng/tools/anaconda/bin:~/bin:$PATH

#export PATH=/home/lifeng/.gem/ruby/2.4.0/bin:/home/lifeng/Downloads/tau/tau-2.26.3/x86_64/bin:/home/lifeng/tools/ParaView-5.4.1-Qt5-OpenGL2-MPI-Linux-64bit/bin:/home/lifeng/tools/phantomjs-2.1.1-linux-x86_64/bin:/home/lifeng/tools/anaconda/bin:~/bin:$PATH
#export PATH=/home/lifeng/tools/anaconda/bin:~/bin:$PATH
#export PATH=/home/lifeng/.gem/ruby/2.4.0/bin:/home/lifeng/Downloads/tau/tau-2.26.3/x86_64/bin:/home/lifeng/tools/ParaView-5.4.1-Qt5-OpenGL2-MPI-Linux-64bit/bin:/home/lifeng/tools/phantomjs-2.1.1-linux-x86_64/bin:~/bin:$PATH
export PATH=/home/lifeng/tools/ParaView-5.4.1-Qt5-OpenGL2-MPI-Linux-64bit/bin:~/bin:$PATH

## auto login
#te the folder: /etc/systemd/system/getty@tty1.service.d

#Create the file: /etc/systemd/system/getty@tty1.service.d/override.conf

#Open the file with your favorite editor and add this:

#[Service]
#ExecStart=
#ExecStart=-/sbin/agetty --noissue --autologin myusername %I $TERM
#Type=idle

#Replace myusername by your user name.

#export PYTHONPATH=$PYTHONPATH:/usr/lib/paraview-5.1/site-packages/ #fixes "no module named paraview"
#export PYTHONPATH=/home/lifeng/tools/Paraview-5.2/lib:$PYTHONPATH
#export PYTHONPATH=$PYTHONPATH:/usr/lib/paraview-5.1/ #fixes "ImportError: No module named libvtkCommonPython"
#
# set intel compilers:
#source /opt/intel/parallel_studio_xe_2018/bin/psxevars.sh

# this messes up with dbus
CONDA_PATH=$HOME/software/anaconda3
if [ -d $CONDA_PATH ]; then
    export PATH=$CONDA_PATH/bin:$PATH
    python --version
fi


