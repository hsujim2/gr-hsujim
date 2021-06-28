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

#ifndef INCLUDED_HSUJIM_MY_CSV_H
#define INCLUDED_HSUJIM_MY_CSV_H

#include <hsujim/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace hsujim {

    /*!
     * \brief <+description of block+>
     * \ingroup hsujim
     *
     */
    class HSUJIM_API my_csv : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<my_csv> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of hsujim::my_csv.
       *
       * To avoid accidental use of raw pointers, hsujim::my_csv's
       * constructor is in a private implementation
       * class. hsujim::my_csv::make is the public interface for
       * creating new instances.
       */
      static sptr make(int path);
      virtual void set_path(int path) = 0;
      virtual int path() = 0;
    };

  } // namespace hsujim
} // namespace gr

#endif /* INCLUDED_HSUJIM_MY_CSV_H */

