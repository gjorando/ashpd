/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/assembly.scad: demonstration of assembled pieces.
 *
 * NB.: units are assumed to be millimeters.
 */

include <./globals.scad>
include <../globals.scad>
use <2.1.scad>
use <2.1b.scad>
use <2.1c.scad>
use <2.2.scad>
use <2.3.scad>
use <2.3b.scad>
use <2.6.scad>
use <2.7.scad>
use <2.8.scad>

translate([0, sheet_thickness+rear_core_reduction_length, 0]) {
    //2_1 x1
    rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_1();
    //2_1b x2
    translate([0, (rear_core_2_7_dims()[0]-rear_core_intermediary_backplate_spacing)/2-sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_1b();
    translate([0, (rear_core_2_7_dims()[0]+rear_core_intermediary_backplate_spacing)/2, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_1b();
    //2_1c x1
    translate([0, rear_core_2_7_dims()[0]-sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_1c();
    //2_2 x1
    translate([0, rear_core_2_7_dims()[0], 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_2();
    //2_3 x1
    translate([0, rear_core_2_7_dims()[0]+sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_3();
    //2_3b x1
    translate([0, rear_core_2_7_dims()[0]+2*sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_3b();
    //2_6 x1
    translate([(rear_core_width-rear_core_reinforcing_bar_width)/2, -sheet_thickness, rear_core_back_reduction/4+sheet_thickness/2]) rotate([180, 0, 90]) linear_extrude(sheet_thickness) rear_core_2_6();
    //2_7 x2
    translate([0, -sheet_thickness, 1+rear_core_width/2]) rotate([90, 0, 90]) linear_extrude(sheet_thickness) rear_core_2_7();
    translate([rear_core_width-sheet_thickness, -sheet_thickness, 1+rear_core_width/2]) rotate([90, 0, 90]) linear_extrude(sheet_thickness) rear_core_2_7();
    //2_8 x1
    translate([0, -sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) rear_core_2_8();
}