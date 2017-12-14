# some useful command
alias iuvpn="sudo openconnect --cafile /etc/ssl/certs/ca-certificates.crt --juniper https://vpn.iu.edu"
alias mydesktop="rdesktop -g 1440x900 -P -z -x l -r sound:off  in-csci-27sl112.ads.iu.edu"
alias pegasus="ssh lifen@pegasus.cs.iupui.edu"
alias Webserver="ssh lifeng@fengggli.com"
alias tesla="ssh lifen@tesla.cs.iupui.edu"
alias bigred="ssh lifen@bigred2.uits.iu.edu"
alias xsede="ssh -l fengggli login.xsede.org"
alias comet="ssh rlu@comet.sdsc.xsede.org"
alias karst="ssh lifen@karst.uits.iu.edu"
alias bridges="ssh fli5@br005.bridges.psc.edu"
alias yuankun_bridges="ssh qoofyk@br006.bridges.psc.edu"
alias guest_machine="ssh -X fengggli@192.168.56.2"
alias qemu_guest="ssh -p 2222 fengggli@localhost"
alias stampede="ssh -X tg837458@login2.stampede2.tacc.utexas.edu"
alias 20wk300="ssh -X lifen@149.166.112.27"
alias 1wk300="ssh -X lifeng@149.166.112.149"

alias setdpi="xrandr --output eDP-1 --auto --scale 0.8x0.8 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias setnodpi="xrandr --output eDP-1 --auto --scale 1x1 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias start_pvserver_reversed="pvserver -rc --client-host=140.182.0.241"


# this is the node for DS labs
alias ds01="ssh lifen@10.234.136.55"
alias ds02="ssh lifen@10.234.136.56"
alias ds03="ssh lifen@10.234.136.57"
alias ds04="ssh lifen@10.234.136.58"
alias ds05="ssh lifen@10.234.136.59"
alias ds06="ssh lifen@10.234.136.60"

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

