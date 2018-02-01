/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.3.scad: cover casing.
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>

module rear_core_2_3() {
    difference() {
        rear_core_base_shape(reduction=2*rear_core_back_reduction_for_plates);
        rear_core_base_shape(reduction=rear_core_back_reduction+2*rear_core_cover_casing_margin);
    }
}

linear_extrude(sheet_thickness) rear_core_2_3();