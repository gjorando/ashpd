/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.9.scad: first front junction plate.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <../front_core/globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <../front_core/1A.1.scad>

module rear_core_2_9() {
    translate([rear_core_width/2, rear_core_width/2, 0]) {
        difference() {
            rear_core_base_shape(reduction=2*rear_core_front_reduction_for_plates);
            translate([-front_core_width/2, -rear_core_width/2+cores_offset + 3*rear_core_front_reduction_for_plates/2, 0])
            union() {
                front_core_1A_1_base();
                translate([front_core_width/2, front_core_tube_elevation+front_core_tube_back_border_size+ front_core_tube_diameter/2, 0])
                circle(front_core_tube_back_border_size + front_core_tube_diameter/2);
            }
        }
    }
}

linear_extrude(sheet_thickness) rear_core_2_9();