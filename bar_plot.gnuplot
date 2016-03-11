unset logscale;
unset label
unset xrange
unset yrange
#set logscale y
set key left top 
#set terminal postscript eps color enh font "arial, bold, 20"
set terminal postscript eps color enh font "Times-Roman" 25
#set terminal postscript eps enhanced "NimbusSanL-Regu" fontfile "uhvr8a.pfb"
set output "path_stretch.eps"
set boxwidth 0.9
set style fill border -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
set style data histograms
set xtics border in scale 1,0.5 nomirror  offset character 0, 0, 0 
set ylabel "Average path stretch"
set xlabel "Topology"
set yrange [0:2]
set xtics ("ISP1" 0, "ISP2" 1, "ISP3" 2, "ISP4" 3, "ISP5" 4, "ISP6" 5, "ENTR" 6)
plot 'path_stretch.out' using 3 title 'Legacy-SPF' fill pattern 1, \
'' using  5 title 'Hybrid-LLF' fill pattern 3, \
'' using 7 title 'SDN-LLF' fill pattern 5
