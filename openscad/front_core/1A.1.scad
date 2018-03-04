/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/1A.1.scad: back plate attached to the front of the rear core.
 *
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <globals.scad>

module front_core_lip() {
    translate([-front_core_width/2, 0, 0]) {
        square([front_core_lip_reduction/2 + front_core_lip_inner_slope, front_core_partial_height-(front_core_width/2)]);
        translate([0, front_core_partial_height-(front_core_width/2), 0]) {
            polygon([[0, 0], [front_core_lip_reduction/2, 0], [front_core_lip_reduction/2, front_core_lip_height]]);
            polygon([[front_core_lip_reduction/2, 0], [front_core_lip_reduction/2 + front_core_lip_inner_slope, 0], [front_core_lip_reduction/2, front_core_lip_height]]);
        }
    }
}

module front_core_lips() {
    front_core_lip();
    mirror([1, 0, 0]) front_core_lip();
}

module front_core_1A_1_base() {
    translate([front_core_width/2, front_core_width/2, 0]) {
        difference() {
            circle(front_core_width/2);
            union() {
                translate([-(front_core_width-front_core_lip_reduction)/2+front_core_lip_inner_slope, -front_core_width/2 + front_core_inner_floor_height, 0]) square([front_core_width-front_core_lip_reduction-2*front_core_lip_inner_slope, front_core_width/2 - front_core_inner_floor_height]);
                translate([-front_core_width/2, 0, 0]) square([front_core_width, front_core_width/2]);
            }
        }
        front_core_lips();
    }
}

module front_core_tube_cut() {
    translate([front_core_width/2, front_core_width/2, 0]) {
        difference() {
            circle(front_core_width/2);
            union() {
                translate([-front_core_width/2, 0, 0]) square([front_core_width, front_core_width/2]);
                circle((front_core_width/2)-front_core_lower_tube_thickness);
            }
        }
    }
}

module front_core_floor_attaching_hole() {
    translate([front_core_floor_hole_distance/2, 0, 0]) square([front_core_floor_hole, sheet_thickness]);
}

module front_core_floor_attaching_holes() {
    union() {
        translate([front_core_width/2, front_core_inner_floor_height-sheet_thickness, 0]) {
            mirror([1, 0, 0]) front_core_floor_attaching_hole();
            front_core_floor_attaching_hole();
        }
    }
}

module front_core_inner_walls_attaching_hole() {
    translate([front_core_width/2 - front_core_lip_reduction/2 - front_core_lip_inner_slope, 0, 0]) square([sheet_thickness, front_core_inner_walls_hole]);
}

module front_core_inner_walls_attaching_holes() {
    union() {
        translate([front_core_width/2, front_core_inner_floor_height + (front_core_partial_height-front_core_inner_floor_height-front_core_inner_walls_hole)/2, 0]) {
            mirror([1, 0, 0]) front_core_inner_walls_attaching_hole();
            front_core_inner_walls_attaching_hole();
        }
    }
}

module front_core_1A_1() {
    difference() { 
        front_core_1A_1_base();
        union() {
            front_core_tube_cut();
            front_core_floor_attaching_holes();
            front_core_inner_walls_attaching_holes();
        }
    }
}

linear_extrude(sheet_thickness) front_core_1A_1();