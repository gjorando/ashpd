/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.2.scad: holds the screw holes for the back cover.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <./2.1c.scad>

/* A single screw hole */
module rear_core_cover_screws_hole(radius=rear_core_cover_screws_hole_radius) {
    rotate([0, 0, 45])
    translate([-((rear_core_width-rear_core_back_reduction)/2 - 2*rear_core_cover_casing_margin - rear_core_cover_screws_hole_radius), 0, 0]) circle(radius);
}

/* The four screw holes */
module rear_core_cover_screws_holes(radius=rear_core_cover_screws_hole_radius) {
    translate([rear_core_width/2, rear_core_width/2, 0]) {
        rear_core_cover_screws_hole(radius);
        mirror([1, 0, 0]) rear_core_cover_screws_hole(radius);
        translate([0, rear_core_height-rear_core_width , 0]) mirror([0, 1, 0]) {
        rear_core_cover_screws_hole(radius);
        mirror([1, 0, 0]) rear_core_cover_screws_hole(radius);
        }
    }
}

/* Right after the backplate, this holds the screws of the back cover. */
module rear_core_2_2() {
    difference() {
        union() {
            translate([rear_core_width/2, rear_core_width/2, 0]) {
                difference() {
                    rear_core_base_shape(reduction=rear_core_back_reduction_for_plates);
                    rear_core_base_shape(reduction=rear_core_back_reduction+2*rear_core_cover_casing_margin);
                }
            }    
            rear_core_cover_nut_supports();
        }
        rear_core_cover_screws_holes();
    }
}

linear_extrude(sheet_thickness) rear_core_2_2();