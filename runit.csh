#!/bin/csh
echo "Starting runit.csh"

set dir = "PAR_A5_THP_BIAS-C"

echo "running job "$dir

date

run_exper.py -d RUN_LETKF -i >& out_$dir
mv RUN_LETKF $dir

date

ens.py -d $dir -t 2011,5,24,20,40,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,20,50,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,0,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,10,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,20,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,30,0 -v W --plot9 --zoom 80 160 80 160

ens.py -d $dir -t 2011,5,24,20,40,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,20,50,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,0,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,10,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,20,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,30,0 -v DBZ --plot9 --zoom 80 160 80 160

vort_prob_CM1.py -d $dir -t 2011,5,24,20,35,0 --fcst 3000 60 --noshow

cp $dir*.pdf $dir/Plots/.

python VR_CR.py -d $dir -t VR_CR_$dir --noshow
python VR_INV.py -d $dir -t VR_INV_$dir --noshow

mv VR_*.pdf $dir/Plots/.

date
exit(0)
#---------------------------------------------------------
#
set dir = "88D_A5_THP_BIAS-C"

echo "running job "$dir

date

run_exper.py -d RUN_LETKF -i >& out_$dir
mv RUN_LETKF $dir

date

ens.py -d $dir -t 2011,5,24,20,40,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,20,50,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,0,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,10,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,20,0 -v W --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,30,0 -v W --plot9 --zoom 80 160 80 160

ens.py -d $dir -t 2011,5,24,20,40,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,20,50,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,0,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,10,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,20,0 -v DBZ --plot9 --zoom 80 160 80 160
ens.py -d $dir -t 2011,5,24,21,30,0 -v DBZ --plot9 --zoom 80 160 80 160

vort_prob_CM1.py -d $dir -t 2011,5,24,20,35,0 --fcst 3000 60 --noshow

cp $dir*.pdf $dir/Plots/.

python VR_CR.py -d $dir -t VR_CR_$dir --noshow
python VR_INV.py -d $dir -t VR_INV_$dir --noshow

mv VR_*.pdf $dir/Plots/.


date
##---------------------------------------------------------
#
#
#
#
