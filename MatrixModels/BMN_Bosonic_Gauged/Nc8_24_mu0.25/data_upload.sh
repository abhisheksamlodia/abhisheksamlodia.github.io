#!/bin/bash

T=('0.01' '0.02' '0.035' '0.05' '0.075' '0.1' '0.15'  '0.2' '0.3' '0.4' '0.5' '0.6' '0.7' '0.8' '0.83' '0.85' '0.88' '0.9' '0.91' '0.925' '0.94' '0.95' '1.0' '1.1' '1.2' '1.5' '1.8') # '1.2' '1.5' '1.7' '1.9')
for temp in "${T[@]}"
do
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	cp ~/Desktop/BMN_Results_Bosonic_paper/runs/64.0/L24N8/$temp/Output_Files/Results/*.png ./t$temp/Results/

done
