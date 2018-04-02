/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/1A.4.scad: inner floor.
 *
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <globals.scad>
use <1A.3.scad>
use <1A.1.scad>

module front_core_1A_4() {
    difference() {
        union() {
            square([front_core_partial_length-sheet_thickness, front_core_width-front_core_lip_reduction-2*front_core_lip_inner_slope+2*sheet_thickness]);
            translate([front_core_partial_length-sheet_thickness, ((front_core_width-front_core_lip_reduction-2*front_core_lip_inner_slope+2*sheet_thickness) - (front_core_floor_hole_distance+2*front_core_floor_hole))/2, 0]) rotate([0, 0, 90]) translate([(-(front_core_width+sheet_thickness)/2 + front_core_floor_hole_distance), -front_core_inner_floor_height, 0]) {
                front_core_floor_attaching_holes();
            }
            
        }
        union() {
            front_core_inner_floor_side_holes();
            translate([0, front_core_width-front_core_lip_reduction-2*front_core_lip_inner_slope+sheet_thickness, 0]) front_core_inner_floor_side_holes();
        }
    }
}

linear_extrude(sheet_thickness) front_core_1A_4();
