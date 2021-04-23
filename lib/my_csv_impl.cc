/* -*- c++ -*- */
/*
 * Copyright 2020 hsujim.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "my_csv_impl.h"
#include <fstream>
#include <iostream>
#include <string>

namespace gr {
  namespace hsujim {

    my_csv::sptr
    my_csv::make(int path)
    {
      return gnuradio::get_initial_sptr
        (new my_csv_impl(path));
    }


    /*
     * The private constructor
     */
    my_csv_impl::my_csv_impl(int path)
      : gr::block("my_csv",
              gr::io_signature::make(1, 1,64* sizeof(gr_complex)),
              gr::io_signature::make(0,0,0))
    {
      set_path(path);
    }
    
    

    /*
     * Our virtual destructor.
     */
    my_csv_impl::~my_csv_impl()
    {
    }

    void my_csv_impl::set_path(int path){
      d_path = path;
    }
    int my_csv_impl::path(){return d_path;}

    void
    my_csv_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
      /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
      ninput_items_required[0] = noutput_items;
    }

    int
    my_csv_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      const gr_complex *in = (const gr_complex *) input_items[0];

      // Do <+signal processing+>
      //std::cout<<*in;
      //if(*in == gr_complex(1,0)){
      //std::cout<<"find"<<path()<<std::endl;
      
      //std::cout<<*in<<std::endl;
      // auto now = std::chrono::system_clock::now(); 
      // auto now_ms = std::chrono::time_point_cast<std::chrono::milliseconds>(now); 
      // auto epoch = now_ms.time_since_epoch(); 
      // auto value = std::chrono::duration_cast<std::chrono::milliseconds>(epoch); 
      // long duration = value.count(); 
      // if((duration / 1000) < 500){
      if(*(in) != gr_complex(0,0)){
        std::string filepath = "/home/hsujim/Desktop/workarea/csv/temp";
        filepath = filepath + std::to_string(path())+".csv";
        std::fstream fout(filepath);
        for(int i = 0;i<64;i++){
          //std::cout << (in[i]*gr_complex(1000,0));
          fout << *(in+i) << ",";
          //fout << "in[i]*gr_complex(1000,0)" << ",";
          //std::cout << (in[i]*gr_complex(1000,0))<< std::endl;
        }
        fout.close();
      }
      
      //}
      
      // Tell runtime system how many input items we consumed on
      // each input stream.
      consume_each (noutput_items);

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

  } /* namespace hsujim */
} /* namespace gr */

