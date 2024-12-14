######################## 
set term postscript landscape enhanced color "Text" 16
#set term postscript eps enhanced color solid "Text" 16
#set term postscript portrait enhanced color "Text" 16

#set size 6.0/7.0, 6.0/10.0

set output 'Trajectory.ps'

set zeroaxis
#set grid
set pointsize 1.0
#set mxtics 5
#set mytics 5


########################
set xlabel 'x(m)'
set ylabel 'y(m)'
set title 'Max angle covered by Drag(Air) and without Drag(Air)'
#set logscale y 10.0

set key top right

set style line 1 lt 1 lw 1.9 pt 3 lc rgb "blue" 
set style line 2 lt 1 lw 1.4 pt 5 lc rgb "green"


set key font ",10"
#set origin 0.0,0.5
plot [0:55000] [0:13000] 'trajectory(45).dat' u 1:2  t 'Angle = 45, with no Drag force' w l ls 1,\
           'trajectory(45).dat' every 360 u 1:2 notitle w p ps 1,\
           'Dtrajectory(40).dat' u 1:2  t 'Angle = 40, with Drag force' w l ls 2,\
           'Dtrajectory(40).dat' every 360 u 1:2 notitle w p ps 1,\
          
           
            
            
#set nologscale x
set nologscale y                       
###################################################
quit


########################

########################

