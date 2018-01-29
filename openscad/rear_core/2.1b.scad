include <globals.scad>
include <../globals.scad>
use <2.1.scad>

/* A variant of the backplate with a wider hole for the secondary reinforcement bar. */
module rear_core_2_1b() {
    difference() {
        // Base shape
        rear_core_2_1();
    // Bottom reinforcement bar_hole
        translate([0, -(rear_core_width-rear_core_back_reduction/2)/2, 0]) rotate([0, 0, 90]) rear_core_reinforcement_bar_hole(position=[0, 0, 0], width=rear_core_reinforcing_bar_hole_width-4+2*rear_core_reinforcing_bar_margin);
    }
}

linear_extrude(sheet_thickness) rear_core_2_1b();