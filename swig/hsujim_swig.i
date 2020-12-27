/* -*- c++ -*- */

#define HSUJIM_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "hsujim_swig_doc.i"

%{
#include "hsujim/my_csv.h"
%}

%include "hsujim/my_csv.h"
GR_SWIG_BLOCK_MAGIC2(hsujim, my_csv);

