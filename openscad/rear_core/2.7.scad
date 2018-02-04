/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.1.scad: primary reinforcing bars.
 *
 * quantity: 2
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <2.1.scad>

/* Like the hole for the reinforcement bar, but at a different location, so we wrap the module for convenience. */
module rear_core_reinforcement_bar_end(width=rear_core_reinforcing_bar_hole_width, position=[(rear_core_length-2*rear_core_reduction_length-sheet_thickness)/2, 0, 0]) {
    rear_core_reinforcement_bar_hole(width, position);
}

/* The superior hole to put an intermediary backplate. */
module rear_core_backplate_half_mid_hole() {
    translate([0, (rear_core_reinforcing_bar_width-rear_core_reinforcing_bar_margin)/2, 0]) square([sheet_thickness, rear_core_reinforcing_bar_margin], true);
}

/* Full holes to put an intermediary backplate. */
module rear_core_backplate_mid_hole() {
    rear_core_backplate_half_mid_hole();
    mirror([0, 1, 0]) rear_core_backplate_half_mid_hole();
}


/* Main reinforcing bar of the rear core. */
module rear_core_2_7() {
    translate([rear_core_length/2 - rear_core_reduction_length, rear_core_reinforcing_bar_width/2, 0]) {
        // Base shape
        difference() {
            square([rear_core_length-2*(rear_core_reduction_length+sheet_thickness), rear_core_reinforcing_bar_width], true);
        // Mid-holes
        translate([(rear_core_intermediary_backplate_spacing+sheet_thickness)/2, 0, 0]) rear_core_backplate_mid_hole();
        translate([-(rear_core_intermediary_backplate_spacing+sheet_thickness)/2, 0, 0]) rear_core_backplate_mid_hole();
        }
        // End bits
        rear_core_reinforcement_bar_end();
        mirror([1, 0, 0]) rear_core_reinforcement_bar_end();
    }
}

function rear_core_2_7_dims() = [rear_core_length-2*rear_core_reduction_length, rear_core_reinforcing_bar_width, 0];

linear_extrude(sheet_thickness) rear_core_2_7();