include <../globals.scad>
include <./globals.scad>
use <2.7.scad>

/* Main reinforcing bar of the rear core. */
module rear_core_2_6() {
    square([rear_core_length-rear_core_reduction_length-(2*sheet_thickness), rear_core_reinforcing_bar_width-4], true);
    rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width-4);
    mirror([1, 0, 0]) rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width-4);
}

linear_extrude(sheet_thickness) rear_core_2_6();