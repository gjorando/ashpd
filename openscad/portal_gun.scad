/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./portal_gun.scad: demonstration of global assembled pieces.
 *
 * NB.: units are assumed to be millimeters.
 */
 
 include <./globals.scad>
 include <rear_core/globals.scad>
 include <front_core/globals.scad>
 use <rear_core/assembly.scad>
 use <front_core/assembly.scad>
 
 translate([0, front_core_length, 0]) rear_core_assembly();
 translate([(rear_core_width-front_core_width)/2, 0, cores_offset+3*rear_core_front_reduction_for_plates/2]) front_core_assembly();