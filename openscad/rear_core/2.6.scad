/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear-core/2.1.scad: secondary reinforcing bar.
 *
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <2.7.scad>

/* Secondary reinforcing bar of the rear core. */
module rear_core_2_6() {
    square([rear_core_length-rear_core_reduction_length-(2*sheet_thickness), rear_core_reinforcing_bar_width-4], true);
    rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width-4);
    mirror([1, 0, 0]) rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width-4);
}

linear_extrude(sheet_thickness) rear_core_2_6();