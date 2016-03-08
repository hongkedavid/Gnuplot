set terminal postscript eps enhanced color font 'Helvetica,18'
set output 'test.eps'
set border 3
set xtics nomirror; set ytics nomirror
set logscale y
set label "caption" at 11,1200 font 'Helvetica,24' textcolor rgb "red"
set arrow from 12,900 to 10.5,90 linecolor rgb "red"
set xlabel "x"
set ylabel "y in log scale"
unset key
plot "data.txt" using 1:2 with lines linewidth 8 linecolor rgb "black"
