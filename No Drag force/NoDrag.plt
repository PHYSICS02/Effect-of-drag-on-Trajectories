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
set title 'Projectile without Drag(Air)'
#set logscale y 10.0

set key top right

set style line 1 lt 1 lw 1.9 pt 3 lc rgb "red" 
set style line 2 lt 1 lw 1.4 pt 5 lc rgb "green"
set style line 3 lt 1 lw 1.3 pt 1 lc rgb "blue"
set style line 4 lt 1 lw 1.2 pt 6 lc rgb "black"
set style line 5 lt 1 lw 1.7 pt 7 lc rgb "magenta"
set style line 6 lt 1 lw 1.7 pt 1 lc rgb "brown"
set style line 7 lt 1 lw 1.7 pt 1 lc rgb "purple"

set key font ",10"
#set origin 0.0,0.5
plot [0:55000] [0:25000] 'trajectory(30).dat' u 1:2  t 'Angle = 30' w l ls 1,\
           'trajectory(30).dat' every 360 u 1:2 notitle w p ps 1,\
           'trajectory(35).dat' u 1:2  t 'Angle = 35' w l ls 2,\
           'trajectory(35).dat' every 360 u 1:2 notitle w p ps 1,\
           'trajectory(40).dat' u 1:2  t 'Angle = 40' w l ls 3,\
           'trajectory(40).dat' every 360 u 1:2 notitle w p ps 1,\
           'trajectory(45).dat' u 1:2  t 'Angle = 45' w l ls 4,\
           'trajectory(45).dat' every 360 u 1:2 notitle w p ps 1,\
            'trajectory(50).dat' u 1:2  t 'Angle = 50' w l ls 5,\
           'trajectory(50).dat' every 360 u 1:2 notitle w p ps 1,\
           'trajectory(55).dat' u 1:2  t 'Angle = 55' w l ls 6,\
           'trajectory(55).dat' every 360 u 1:2 notitle w p ps 1,\
           'trajectory(60).dat' u 1:2  t 'Angle = 60' w l ls 7,\
           'trajectory(60).dat' every 360 u 1:2 notitle w p ps 1,\
           
            
            
#set nologscale x
set nologscale y                       
###################################################
quit


########################

########################

