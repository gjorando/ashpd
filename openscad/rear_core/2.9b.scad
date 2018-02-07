/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.9b.scad: second front junction plate.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <./2.9.scad>

module rear_core_2_9b() {
    difference() {
        rear_core_2_9();
        translate([rear_core_width/2, rear_core_width/2, 0]) difference() {
            rear_core_base_shape(reduction=2*rear_core_front_reduction_for_plates);
            rear_core_base_shape(reduction=3*rear_core_front_reduction_for_plates);
        }
    }
}

linear_extrude(sheet_thickness) rear_core_2_9b();