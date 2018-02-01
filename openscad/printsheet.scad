/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./printsheet.scad: a ready to cut sheet with all the pieces in the right amount.
 *
 * NB.: units are assumed to be millimeters.
 */

include <globals.scad>
include <rear_core/globals.scad>
use <rear_core/2.1.scad>
use <rear_core/2.2.scad>
use <rear_core/2.1b.scad>
use <rear_core/2.1c.scad>
use <rear_core/2.6.scad>
use <rear_core/2.7.scad>

// 2.1 x1
translate([print_margin + rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1();
// 2.1b x2
translate([3*print_margin + 5*rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1b();
translate([4*print_margin + 7*rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1b();
// 2.1c x1
translate([2*print_margin + 3*rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1c();
// 2.2 x1
translate([2*print_margin + (rear_core_height-rear_core_back_reduction_for_plates)/2 + (rear_core_length-rear_core_reduction_length) + (rear_core_height-rear_core_width)/2, 2*print_margin+rear_core_height+(rear_core_width-rear_core_back_reduction_for_plates)/2, 0]) rotate([0, 0, 90]) rear_core_2_2();
// 2.6 x1
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 4*print_margin+rear_core_height+5*rear_core_reinforcing_bar_width/2 -2, 0]) rear_core_2_6();
// 2.7 x2
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 2*print_margin+rear_core_height+rear_core_reinforcing_bar_width/2, 0]) rear_core_2_7();
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 3*print_margin+rear_core_height+3*rear_core_reinforcing_bar_width/2, 0]) rear_core_2_7();