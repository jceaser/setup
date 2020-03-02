
new-window -n PIM

########
# split panels to create 7

split-window -h -p 75
split-window -h -p 20
split-window -v -p 80
split-window -v -p 75
split-window -v -p 67
split-window -v -p 50

########
# launch applications

select-pane -t 0
send-keys 'clear ; task' C-m

select-pane -t 1
send-keys 'clear ; fish' C-m

select-pane -t 2
send-keys 'clear ; curl wttr.in?0' C-m

select-pane -t 3
send-keys 'clear ; cal' C-m

select-pane -t 4
send-keys 'clear ; rpn --interactive' C-m

select-pane -t 5
clock-mode

select-pane -t 6
send-key 'clear' C-m

########
# set focuse
select-pane -t 1

#########
# Notes
# kill-window to shut it all down

