include <../globals.scad>
include <./globals.scad>
use <2.1.scad>

/* Like the hole for the reinforcement bar, but at a different location, so we wrap the module for convenience. */
module rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width, position=[(rear_core_length-rear_core_reduction_length-sheet_thickness)/2, 0, 0]) {
    rear_core_reinforcement_bar_hole(width, position);
}

/* Main reinforcing bar of the rear core. */
module rear_core_2_7() {
    square([rear_core_length-rear_core_reduction_length-(2*sheet_thickness), rear_core_reinforcing_bar_width], true);
    rear_core_reinforcement_bar_end();
    mirror([1, 0, 0]) rear_core_reinforcement_bar_end();
}

linear_extrude(sheet_thickness) rear_core_2_7();