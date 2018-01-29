include <globals.scad>
include <rear_core/globals.scad>
use <rear_core/2.1.scad>

translate([print_margin + rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1();
translate([2*print_margin + 3*rear_core_width/2, print_margin + rear_core_width/2, 0]) rear_core_2_1();