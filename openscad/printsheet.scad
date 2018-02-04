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
use <rear_core/2.1b.scad>
use <rear_core/2.1c.scad>
use <rear_core/2.2.scad>
use <rear_core/2.3.scad>
use <rear_core/2.3b.scad>
use <rear_core/2.4.scad>
use <rear_core/2.5.scad>
use <rear_core/2.6.scad>
use <rear_core/2.7.scad>
use <rear_core/2.8.scad>

// 2.1 x1
translate([print_margin, print_margin, 0]) rear_core_2_1();
// 2.1b x2
translate([2*print_margin+rear_core_2_1_dims()[0], print_margin, 0]) rear_core_2_1b();
translate([3*print_margin+2*rear_core_2_1_dims()[0], print_margin, 0]) rear_core_2_1b();
// 2.1c x1
translate([print_margin, 2*print_margin+rear_core_2_1_dims()[1], 0]) rear_core_2_1c();
// 2.2 x1
translate([2*print_margin+rear_core_2_1_dims()[0], 2*print_margin+rear_core_2_1_dims()[1], 0]) rear_core_2_2();
// 2.3 x1
translate([3*print_margin+2*rear_core_2_1_dims()[0], 2*print_margin+rear_core_2_1_dims()[1], 0]) rear_core_2_3();
// 2.3b x1
translate([print_margin, 3*print_margin+2*rear_core_2_1_dims()[1], 0]) rear_core_2_3b();
// 2.4 x1
translate([4*print_margin+3*rear_core_2_1_dims()[0], 2*print_margin+rear_core_2_1_dims()[1], 0]) rear_core_2_4();
// 2.5 x1
translate([4*print_margin+3*rear_core_2_1_dims()[0], 3*print_margin+2*rear_core_2_1_dims()[1], 0]) rear_core_2_5();
// 2.6 x1
translate([2*print_margin + rear_core_2_1_dims()[0], 3*print_margin + 2*rear_core_2_1_dims()[1], 0]) rear_core_2_6();
// 2.7 x2
translate([2*print_margin + rear_core_2_1_dims()[0], 4*print_margin + 2*rear_core_2_1_dims()[1] + rear_core_2_7_dims()[1], 0]) rear_core_2_7();
translate([2*print_margin + rear_core_2_1_dims()[0], 5*print_margin + 2*rear_core_2_1_dims()[1] + 2*rear_core_2_7_dims()[1], 0]) rear_core_2_7();
// 2.8 x1
translate([4*print_margin+3*rear_core_2_1_dims()[0], print_margin, 0]) rear_core_2_8();