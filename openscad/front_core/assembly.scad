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
use <1A.1.scad>

module center_core() {
    rotate([-90, 0, 0]) linear_extrude(front_core_center_core_length) difference() {
        circle(front_core_tube_diameter/2);
        circle((front_core_tube_diameter-front_core_center_core_thickness)/2);
    }
}

module front_core_assembly() {
    translate([0, sheet_thickness, 0]) {
        //1A_1 x1
        translate([0, front_core_length+sheet_thickness, 0]) rotate([90, 0, 0]) linear_extrude(sheet_thickness) front_core_1A_1();
        
        /* extras */
        
        //demi-tube
        translate([front_core_width, -sheet_thickness, 0]) rotate([90, 0, 180]) linear_extrude(front_core_length+2*sheet_thickness) front_core_tube_cut();
        //center core
        translate([front_core_width/2, -sheet_thickness+front_core_center_core_offset, front_core_tube_diameter/2 + front_core_tube_elevation + front_core_tube_back_border_size]) center_core();
    }
}

front_core_assembly();