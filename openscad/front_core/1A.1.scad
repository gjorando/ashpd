/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/1A.1.scad: global variables that apply to pieces from the front core.
 *
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <globals.scad>
z
module front_core_lip() {
    translate([-front_core_width/2, 0, 0]) {
        square([front_core_lip_reduction/2, front_core_partial_height-(front_core_width/2)]);
        translate([0, front_core_partial_height-(front_core_width/2), 0]) polygon([[0, 0], [front_core_lip_reduction/2, 0], [front_core_lip_reduction/2, front_core_lip_height]]);
        translate([0, -front_core_width/2 + front_core_inner_floor_height, 0]) polygon([[front_core_lip_reduction/2, 0], [front_core_lip_reduction/2 + front_core_lip_inner_slope, 0], [front_core_lip_reduction/2, front_core_lip_height + front_core_partial_height - front_core_inner_floor_height]]);
    }
}

module front_core_lips() {
    front_core_lip();
    mirror([1, 0, 0]) front_core_lip();
}

module front_core_1A_1_base() {
    translate([front_core_width/2, front_core_width/2, 0]) {
        difference() {
            circle((front_core_width/2)-lower_tube_thickness);
            union() {
                translate([-(front_core_width-front_core_lip_reduction)/2, -front_core_width/2 + front_core_inner_floor_height, 0]) square([front_core_width-front_core_lip_reduction, front_core_width/2 - front_core_inner_floor_height]);
                translate([-front_core_width/2, 0, 0]) square([front_core_width, front_core_width/2]);
            }
        }
        front_core_lips();
    }
}

module front_core_1A_1() {
    front_core_1A_1_base();
    translate([front_core_width/2, front_core_width/2, 0]) {
        square([2, 2]);
    }
}

linear_extrude(sheet_thickness) front_core_1A_1();