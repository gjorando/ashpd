/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/1A.3.scad: inner side walls.
 *
 * quantity: 2
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <globals.scad>

module front_core_inner_floor_side_holes() {
    square([ front_core_inner_walls_hole, sheet_thickness]);
        translate([(front_core_partial_length-sheet_thickness-front_core_inner_walls_hole)/2, 0, 0]) square([ front_core_inner_walls_hole, sheet_thickness]);
        translate([front_core_partial_length-sheet_thickness-front_core_inner_walls_hole, 0, 0]) square([ front_core_inner_walls_hole, sheet_thickness]);
}

module front_core_1A_3() {
    translate([0, sheet_thickness, 0]) {
        square([front_core_partial_length-sheet_thickness, front_core_partial_height-front_core_inner_floor_height]);
        translate([front_core_partial_length-sheet_thickness, (front_core_partial_height-front_core_inner_floor_height - front_core_inner_walls_hole)/2, 0]) square([sheet_thickness, front_core_inner_walls_hole]);
        translate([0, -sheet_thickness, 0]) front_core_inner_floor_side_holes();
    }
}

linear_extrude(sheet_thickness) front_core_1A_3();
