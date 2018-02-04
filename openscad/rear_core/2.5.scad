/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.5.scad: cover (back part with larger screws hole for their heads).
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <./2.2.scad>
use <./2.4.scad>

module rear_core_2_5() {
    difference() {
        rear_core_2_4();
        rear_core_cover_screws_holes(rear_core_cover_screws_head_radius);
    }
}

linear_extrude(sheet_thickness) rear_core_2_5();