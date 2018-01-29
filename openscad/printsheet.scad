include <globals.scad>
include <rear_core/globals.scad>
use <rear_core/2.1.scad>
use <rear_core/2.6.scad>
use <rear_core/2.7.scad>

translate([print_margin + rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1();
translate([2*print_margin + 3*rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1();
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 2*print_margin+rear_core_height+rear_core_reinforcing_bar_width/2, 0]) rear_core_2_7();
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 3*print_margin+rear_core_height+3*rear_core_reinforcing_bar_width/2, 0]) rear_core_2_7();
translate([print_margin+(rear_core_length-rear_core_reduction_length)/2, 3*print_margin+rear_core_height+5*rear_core_reinforcing_bar_width/2, 0]) rear_core_2_6();