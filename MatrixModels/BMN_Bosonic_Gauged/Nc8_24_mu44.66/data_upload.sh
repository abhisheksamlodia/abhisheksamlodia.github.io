#!/bin/bash

T=('0.2' '0.25' '0.28' '0.3' '0.4' '0.5' '0.6' '0.7' '0.8' '0.9' '1.0' '1.2' '1.5' '2.0' '2.5' '3.0' '3.25' '3.5' '3.75' '4.0' '4.01' '4.02' '4.03' '4.05' '4.1' '4.2' '4.3' '4.4' '4.5' '4.75' '5.0')

for temp in "${T[@]}"
do
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	cp ~/Desktop/BMN_Results_Bosonic_paper/runs/0.00001/L24N8/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

