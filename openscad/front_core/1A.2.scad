/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/1A.2.scad: nut plate to attach the front and the rear core.
 *
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <globals.scad>
use <1A.1.scad>

module front_core_junction_nut() {
    translate([11, 8, 0]) circle(front_core_junction_nut_diameter/2, $fn=6);
}

module front_core_junction_nuts() {
    translate([front_core_width/2, 20, 0]) {
        front_core_junction_nut();
        rotate([0, 0, 180]) front_core_junction_nut();
        rotate([180, 0, 0]) front_core_junction_nut();
        rotate([0, 180, 0]) front_core_junction_nut();
    }
}

module front_core_1A_2() {
    difference() { 
        front_core_1A_1();
        union() {
            translate([0, front_core_inner_floor_height-sheet_thickness, 0]) square([front_core_width, front_core_width/2]);
            front_core_junction_nuts();
        }
    }
}

linear_extrude(sheet_thickness) front_core_1A_2();