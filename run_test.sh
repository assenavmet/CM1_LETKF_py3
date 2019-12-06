#!/bin/csh
/Users/vanessa.ferreira/CM1_LETKF/create_run_letkf.py
/Users/vanessa.ferreira/CM1_LETKF/run_fcst.py -e RUN_LETKF/RUN_LETKF.exp -i
/Users/vanessa.ferreira/CM1_LETKF/ens.py -e RUN_LETKF/RUN_LETKF.exp --init0 -t 2003,5,8,20,40,0 --write

#==> run_Exper: found experiment files RUN_LETKF/RUN_LETKF.exp

#==> run_Exper: start time for experiment is 2003-05-08 20:40:00

#==> run_Exper: stop  time for experiment is 2003-05-08 21:05:00
#======>>> Step  0:  Run forecast from 2003_05-08 20:40:00 until 2003_05-08 21:00:00
#======>>> Step  1:  Assimilate and run additive noise at 2003_05-08 21:00:00, then run forecast until 2003_05-08 21:05:00
#======>>> Step  2:  Assimilate at 2003_05-08 21:05:00, then run forecast until 2003_05-08 21:10:00

#==> run_Exper: Asynchronous DA is requested, overshoot = 150 sec


#--------------------------------------------------------------------------

#==> run_Exper: Now   Model TIME is  0  seconds 

#==> run_Exper: Later Model TIME is  1350.0  seconds 

#==> run_Exper: Step  0:  Run forecast from 2003_05-08 20:40:00 until 2003_05-08 21:00:00

#==> run_Exper: Integrating ensemble members from date and time: 2003-05-08_20:40:00


/Users/vanessa.ferreira/CM1_LETKF/run_fcst.py -e RUN_LETKF/RUN_LETKF.exp --run_time 1200 -t 2003,05,08,20,40,00


#==> run_Exper: Integrated ensemble members to time: 2003-05-08_21:00:00


#--------------------------------------------------------------------------

#==> run_Exper: Now   Model TIME is  1200  seconds 

#==> run_Exper: Later Model TIME is  1650.0  seconds 

#==> run_Exper: Step  1:  Assimilate and run additive noise at 2003_05-08 21:00:00, then run forecast until 2003_05-08 21:05:00

#==> run_Exper:  Assimilation is being called, the time:  2003-05-08 21:00:00


/Users/vanessa.ferreira/CM1_LETKF/run_filter.py --exper RUN_LETKF/RUN_LETKF.exp --time 2003,05,08,21,00,00 --freq -300


#==> run_Exper:  Additive noise is being called, the time: 2003-05-08 21:00:00

#==> run_Exper:  Additive noise is being called, the time: 2003-05-08 21:00:00

#==> run_Exper:  Additive noise is based on composite reflectivity


/Users/vanessa.ferreira/CM1_LETKF/ens.py -e RUN_LETKF/RUN_LETKF.exp --crefperts -t 2003,05,08,21,00,00 --write


#==> run_Exper: Integrating ensemble members from date and time: 2003-05-08_21:00:00


/Users/vanessa.ferreira/CM1_LETKF/run_fcst.py -e RUN_LETKF/RUN_LETKF.exp --run_time 300 -t 2003,05,08,21,00,00


#==> run_Exper: Integrated ensemble members to time: 2003-05-08_21:05:00


#--------------------------------------------------------------------------

#==> run_Exper: Now   Model TIME is  1500  seconds 

#==> run_Exper: Later Model TIME is  1800  seconds 

#==> run_Exper: Step  2:  Assimilate at 2003_05-08 21:05:00, then run forecast until 2003_05-08 21:10:00

#==> run_Exper:  Assimilation is being called, the time:  2003-05-08 21:05:00


/Users/vanessa.ferreira/CM1_LETKF/run_filter.py --exper RUN_LETKF/RUN_LETKF.exp --time 2003,05,08,21,05,00 --freq -300


#==> run_Exper: Integrating ensemble members from date and time: 2003-05-08_21:05:00


/Users/vanessa.ferreira/CM1_LETKF/run_fcst.py -e RUN_LETKF/RUN_LETKF.exp --run_time 300 -t 2003,05,08,21,05,00


#==> run_Exper: Integrated ensemble members to time: 2003-05-08_21:10:00


#==> run_Exper:  Elapsed WALL CLOCK TIME FOR TOTAL EXPERIMENT: 0.000410 


#==> run_Exper:  Elapsed WALL CLOCK TIME FOR FILTER:           0.000086 


#==> run_Exper:  Elapsed WALL CLOCK TIME FOR MODEL RUNS:       0.000180 


#==> run_Exper:  Elapsed WALL CLOCK TIME FOR ADDITIVE NOISE:   0.000054 


# Trying to do some plots

python ens.py -d RUN_LETKF/ -t 2003,5,8,21,0,0 -v W --plot9 --zoom 80 160 80 160
python ens.py -d RUN_LETKF/ -t 2003,5,8,21,0,0 -v DBZ --plot9 --zoom 80 160 80 160
python vort_prob_CM1.py -d RUN_LETKF/ -t 2003,5,8,21,0,0 --fcst 1 300 --noshow
