#!/bin/bash

T=( '0.2' '0.3' '0.32' '0.34' '0.36' '0.38' '0.4' '0.5' '0.6' '0.7' '0.8' '0.9' '0.95' '1.0' '1.05' '1.1' '1.2' '1.3' '1.4' '1.5' '1.7' '1.9' '2.0' '2.05' '2.1' '2.2' '2.4' '2.5' '3.0' '4.0')
for temp in "${T[@]}"
do
	mkdir t$temp
	mkdir t$temp/Results/
	cp ../Nc8_24_mu2/t0.8/index.html ./t$temp/
	sed -ie "s/^<title>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/title>.*/<title>BMN_Bosonic_Gauged\/Nc8_24_mu21.544\/t$temp<\/title>/" t$temp/index.html
	sed -ie "s/^<h1>BMN_Bosonic_Gauged\/Nc8_24_mu2.0\/t0.8<\/h1>.*/<h1>BMN_Bosonic_Gauged\/Nc8_24_mu21.544\/t$temp<\/h1>/" t$temp/index.html
	cp ~/Desktop/BMN_Results_Bosonic_paper/runs/0.0001/L24N8/$temp/Output_Files/Results/*.png ./t$temp/Results/

done
