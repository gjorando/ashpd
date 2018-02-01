/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.1c.scad: back backplate for the main structure of the rear core (with screw holes for the cover).
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <./2.2.scad>

module rear_core_2_1c() {
    rear_core_2_1();
    rear_core_cover_screws_hole_supports();
}

linear_extrude(sheet_thickness) rear_core_2_1c();