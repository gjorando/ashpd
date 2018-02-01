/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear-core/2.2.scad: holds the screw holes for the back cover.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>

/* A single screw support */
module rear_core_cover_screws_hole_support() {
    rotate([0, 0, 45]) translate([-((rear_core_width-rear_core_back_reduction)/2 - rear_core_cover_casing_margin - rear_core_cover_screws_hole_radius), 0, 0]) {
        difference() {
            circle(rear_core_cover_screws_hole_radius+2*rear_core_cover_screws_hole_support_margin);
            circle(rear_core_cover_screws_hole_radius);
        }
    }
}

/* The four screw supports */
module rear_core_cover_screws_hole_supports() {
    rear_core_cover_screws_hole_support();
    mirror([1, 0, 0]) rear_core_cover_screws_hole_support();
    translate([0, rear_core_height-rear_core_width , 0]) mirror([0, 1, 0]) {
    rear_core_cover_screws_hole_support();
    mirror([1, 0, 0]) rear_core_cover_screws_hole_support();
    }
}

/* Right after the backplate, this holds the screws of the back cover. */
module rear_core_2_2() {
    difference() {
        rear_core_base_shape(reduction=rear_core_back_reduction_for_plates);
        rear_core_base_shape(reduction=rear_core_back_reduction+2*rear_core_cover_casing_margin);
    }
    
    rear_core_cover_screws_hole_supports();
}

linear_extrude(sheet_thickness) rear_core_2_2();