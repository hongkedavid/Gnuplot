reset
set terminal postscript eps enhanced color "Helvetica" 20
set output "./fps_upload.eps"
# set terminal pngcairo size 300,400 enhanced  font "Verdana,18"
# set output './cdf/qtype_short_long_cdf.png'


set yrange  [0:32]
# set logscale x
set xrange [0:275]
# set xrange [-120:-60]
# set xrange [0:1e+07]
#set yrange [0:1]
#set xrange [0.0001:500000]


set xtics  rotate by 0 font ",18"
set ytics  rotate by 0  font ",20"

#set xtics rotate by -45  font ",10"
#set xtics (0,1,2,5,10,15,20,30,40,50) font ",16"


set ylabel 'Frame rate (fps)' offset 2 font "Helvetica,18"
set xlabel 'Time (s)' font "Helvetica,18"
#set xlabel 'QTYPE RATIO' font "Helvetica,18"
#set xlabel "% of IPs that appeared in all sites (10 min window)" font "Helvetica,18"
# set xlabel "Flow Duration (s)" font "Helvetica,18"
# set xlabel "Flow Size (KB)" font "Helvetica,18"
# set xlabel "Top Talkers Appreance Num" font "Helvetica,18"
#set xlabel "Number of appearance in top talkers for each IP" font "Helvetica,18"
# set xlabel "# of concurrent TCP flows in 1 sec window " font "Helvetica,18"

 # set xlabel "TCP Flow Duration (ms) " font "Helvetica,18"
# set xlabel "MX queries generated from each ip with short appearance"  font "Helvetica,18"
set key bottom right samplen 3 font ",20"

set size 0.65,0.65
# set size 0.8,0.8


set style line 12 lc rgb 'black' lt 12 lw 1
set grid back ls 12


# plot './cdf/all_long_new_site_max_cdf' using  1:2 with lines lt 1 lw 5  lc rgb 'red' t 'long (max)',\
# './cdf/all_long_new_site_mean_cdf' using  1:2 with lines lt 3 lw 5  lc rgb 'red' t 'long (mean)',\
# './cdf/all_long_new_site_median_cdf' using  1:2 with lines  lt 7 lw 5  lc rgb 'red' t 'long (median)',\
# './cdf/all_short_new_site_max_cdf' using  1:2 with lines lt 1 lw 5  lc rgb 'blue' t 'short (max)',\
# './cdf/all_short_new_site_mean_cdf' using  1:2 with lines lt 3 lw 5  lc rgb 'blue' t 'short (mean)',\
# './cdf/all_short_new_site_median_cdf' using  1:2 with lines  lt 7 lw 5  lc rgb 'blue' t 'short (median)'

plot 'fps_upload.dat' using  ($1):2 with lines lt 1  lw 5  lc rgb 'blue' t ""


# './cdf/short_site_max_cdf' using  1:2 with lines lt 1 lw 5  lc rgb '#008000' t 'baseline-short (max)',\
# './cdf/short_site_mean_cdf' using  1:2 with lines lt 3 lw 5  lc rgb '#008000' t 'baseline-short (mean)',\
# './cdf/short_site_median_cdf' using  1:2 with lines  lt 7 lw 5  lc rgb '#008000' t 'baseline-short (median)'
