/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.8.scad: front plate.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
include <../front_core/globals.scad>
use <./2.1.scad>
use <../front_core/1A.1.scad>

module rear_core_2_8() {
    difference() {
        translate([rear_core_width/2, rear_core_width/2, 0])
    rear_core_base_shape(reduction=rear_core_front_reduction_for_plates);
        translate([(rear_core_width-front_core_width)/2, cores_offset+3*rear_core_front_reduction_for_plates/2, 0]) front_core_junction_holes();
    }
}

linear_extrude(sheet_thickness) rear_core_2_8();