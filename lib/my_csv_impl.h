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

#ifndef INCLUDED_HSUJIM_MY_CSV_IMPL_H
#define INCLUDED_HSUJIM_MY_CSV_IMPL_H

#include <hsujim/my_csv.h>

namespace gr {
  namespace hsujim {

    class my_csv_impl : public my_csv
    {
     private:
      // Nothing to declare in this block.
      int d_path;

     public:
      my_csv_impl(int path);
      ~my_csv_impl();

      void set_path(int path);
      int path();

      // Where all the action really happens
      void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      int general_work(int noutput_items,
           gr_vector_int &ninput_items,
           gr_vector_const_void_star &input_items,
           gr_vector_void_star &output_items);

    };

  } // namespace hsujim
} // namespace gr

#endif /* INCLUDED_HSUJIM_MY_CSV_IMPL_H */

