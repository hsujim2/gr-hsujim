#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/hsujim/workarea/gr-hsujim/python"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/hsujim/workarea/gr-hsujim/build/python":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/hsujim/workarea/gr-hsujim/build/swig:$PYTHONPATH
/usr/bin/python3 /home/hsujim/workarea/gr-hsujim/python/qa_my_csv.py 
