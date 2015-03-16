alias macch='sudo ip link set dev enp7s0 address 00:e0:4c:68:00:05'
alias stt='nohup /opt/sublime_text_3/sublime_text > /dev/null &'
alias gitbookeditor='nohup sh /home/gitbook/start.sh > /dev/null &'
alias docker='sudo docker'
alias netctl='sudo netctl'
alias pycharm4='nohup /opt/pycharm-4.0.3/bin/pycharm.sh > /dev/null &'
alias pycharm3='nohup /opt/pycharm-3.4.1/bin/pycharm.sh > /dev/null &'
#alias rdesktop='rdesktop -g $(xrandr -q | awk '/Screen 0/ {print int($8/1.28) $9 int($10/1.2)}' | sed 's/,//g') -P -z -x l -r sound:off'
alias EDP1offhdmionly='xrandr --output HDMI1 --auto --output eDP1 --off'
alias EDP1only='xrandr --output HDMI1 --off --output eDP1 --auto'
alias EDP1left='xrandr --output HDMI1 --auto --left-of eDP1 --auto --primary'
alias EDP1right='xrandr --output HDMI1 --auto --right-of eDP1 --auto --primary'
alias EDP1cp='xrandr --output HDMI1 --auto --left-of eDP1 --auto'
alias rdesktop='rdesktop -g 1067x640'
alias getwebsite='wget -r -k -p -np'
#ids=$(xinput --list|grep 'Multi' | awk -v search="$SEARCH" \
#	    '$0 ~ search {match($0, /id=[0-9]+/);\
#	                      if (RSTART) \
#				                          print substr($0, RSTART+3, RLENGTH-3)\
#							                   }'\
#									        )
alias chrome="optirun google-chrome-stable --touch-devices=$(xinput list --id-only 'eGalaxTouch Virtual Device for Multi')"
alias umush="sudo umount /mnt/{c,d,e,f,g}"
alias start_ap="sudo create_ap -m bridge wlp8s0 virbr0 ilab 98188729"
