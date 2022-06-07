set terminal postscript eps enhanced color font "arial,18"
set output 'usw_lines.eps'

set key spacing 1.5
set border lw 1.5
#  Plot data
set xtics 0.5
set ytics 0.25
set mxtics 5
set mytics 5
set xrange [0:2.2]
set yrange [0:1.0]
set key top right maxrows 5
#set key box width 0 height 0 opaque
set xlabel "r_t" 
set ylabel "W^u"

set label "N = 12, {/Symbol z} = 0.30" boxed at 1.4,0.65

plot "usw_lines_zeta0.30_n12_l12_nt24.txt" using 1:3:4 with yerrorbars pt 6 ps 2.0 lw 5 lc rgb "#801400" title "L = 12, N_t = 24","usw_lines_zeta0.30_n12_l12_nt12.txt" using 1:3:4 with yerrorbars pt 4 ps 2.0 lw 5 lc rgb "#191970" title "L = 12, N_t = 12","usw_lines_zeta0.30_n12_l24_nt12.txt" using 1:3:4 with yerrorbars pt 14 ps 2.0 lw 5 lc rgb "#c000ff" title "L = 24, N_t = 12","usw_lines_zeta0.30_n12_l24_nt24.txt" using 1:3:4 with yerrorbars pt 12 ps 2.0 lw 5 lc rgb "#006400" title "L = 24, N_t = 24"
#,"usw_lines_zeta0.10.txt" using 1:3:4 with yerrorbars pt 6 ps 1.2 lw 5 lc rgb "#801414" title "{/Symbol z}=0.10"
