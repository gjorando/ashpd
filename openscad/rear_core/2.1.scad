include <../globals.scad>
include <./globals.scad>

/* The base shape. Apply a reduction to make it smaller. */
module rear_core_base_shape(reduction=0) {
    hull() {
        circle((rear_core_width-reduction)/2);
        translate([0, rear_core_height-rear_core_width, 0]) circle((rear_core_width-reduction)/2);
    }
}

/* A hole for the reinforcement bar. Default values are for the two primary reinforcement holes. */
module rear_core_reinforcement_bar_hole(width=rear_core_reinforcing_bar_width, position=[(rear_core_width-sheet_thickness)/2, (rear_core_height-rear_core_width)/2, 0]) {
    translate(position) square([sheet_thickness, width], true);
}

/* The piece. */
module rear_core_2_1() {
    difference() {
        // External shape
        rear_core_base_shape();
        // Internal shape
        rear_core_base_shape(reduction=rear_core_back_reduction);
        // Right rear_core_reinforcement_bar_hole
        rear_core_reinforcement_bar_hole();
        // Left rear_core_reinforcement_bar_hole
        mirror([1, 0, 0]) rear_core_reinforcement_bar_hole();
        // Bottom reinforcement bar_hole
        translate([0, -(rear_core_width-rear_core_back_reduction/2)/2, 0]) rotate([0, 0, 90]) rear_core_reinforcement_bar_hole(position=[0, 0, 0], width=rear_core_reinforcing_bar_width-4);
    }
}

linear_extrude(sheet_thickness) rear_core_2_1();