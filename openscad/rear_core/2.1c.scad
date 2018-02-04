/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.1c.scad: back backplate for the main structure of the rear core (with screw holes for the cover).
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>

/* A single nut support */
module rear_core_cover_nut_support() {
    rotate([0, 0, 45])
    translate([-((rear_core_width-rear_core_back_reduction)/2 - 2*rear_core_cover_casing_margin - rear_core_cover_screws_hole_radius), 0, 0]) {
        hull() {
            circle(rear_core_cover_nut_radius+2*rear_core_cover_screws_hole_support_margin);
            translate([-2*(rear_core_cover_screws_hole_radius+2*rear_core_cover_screws_hole_support_margin), 0, 0]) circle(rear_core_cover_nut_radius+2*rear_core_cover_screws_hole_support_margin);
        }
    }
}

/* The four nut supports */
module rear_core_cover_nut_supports() {
    translate([rear_core_width/2, rear_core_width/2, 0]) {
        rear_core_cover_nut_support();
        mirror([1, 0, 0]) rear_core_cover_nut_support();
        translate([0, rear_core_height-rear_core_width , 0]) mirror([0, 1, 0]) {
        rear_core_cover_nut_support();
        mirror([1, 0, 0]) rear_core_cover_nut_support();
        }
    }
}

/* A single nut hole */
module rear_core_cover_nut_hole() {
    rotate([0, 0, 45])
    translate([-((rear_core_width-rear_core_back_reduction)/2 - 2*rear_core_cover_casing_margin - rear_core_cover_screws_hole_radius), 0, 0]) circle(rear_core_cover_nut_radius, $fn=6);
}

/* The four nut holes */
module rear_core_cover_nut_holes() {
    translate([rear_core_width/2, rear_core_width/2, 0]) {
        rear_core_cover_nut_hole();
        mirror([1, 0, 0]) rear_core_cover_nut_hole();
        translate([0, rear_core_height-rear_core_width , 0]) mirror([0, 1, 0]) {
        rear_core_cover_nut_hole();
        mirror([1, 0, 0]) rear_core_cover_nut_hole();
        }
    }
}

module rear_core_2_1c() {
    difference() {
        union() {
            rear_core_2_1();
            rear_core_cover_nut_supports();
        }
        rear_core_cover_nut_holes();
    }
}

linear_extrude(sheet_thickness) rear_core_2_1c();