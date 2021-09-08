#!/bin/bash

T=('0.02' '0.05' '0.075' '0.1' '0.15' '0.2' '0.32' '0.34' '0.36' '0.38' '0.4' '0.5' '0.6' '0.8' '0.9' '0.95' '1.0' '1.05' '1.2' '1.3' '1.5' '2.0')
for temp in "${T[@]}"
do
	rm -rf t$temp
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc16_24_mu6.0\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc16_24_mu6.0\/t$temp<\/h1>/" t$temp/index.html
	cp ~/Desktop/BMN_Results_Bosonic_paper/runs/0.004629/L24N16/$temp/Output_Files/Results/*.png ./t$temp/Results/

done

