/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/2.4.scad: cover (front part).
 * 
 * quantity: 1
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>
include <./globals.scad>
use <./2.1.scad>
use <./2.2.scad>

module usb_hole() {
    square([rear_core_usb_width, rear_core_usb_height], true);
}

module rear_core_2_4() {
    difference() {
        union() {
            translate([rear_core_width/2, rear_core_width/2, 0])
            rear_core_base_shape(reduction=rear_core_back_reduction+2*rear_core_cover_casing_margin);
        }
        rear_core_cover_screws_holes();
        rear_core_cover_vent_hole_radius = 1.5;
        for(i = [1:10]) {
            for(j = [1:14]) {
                if(i%2 == j%2 && (i!=1 || j!=1) && (i!=10 || j!=14)) {
                    translate([4+rear_core_width/2 + rear_core_cover_vent_hole_radius*2*i, 1.25*rear_core_height/2 - rear_core_cover_vent_hole_radius*2*j, 0]) circle(rear_core_cover_vent_hole_radius);
                }
            }
        }
        translate([rear_core_width/2, rear_core_handle_radius + rear_core_handle_offset_from_bottom + rear_core_cover_casing_margin + rear_core_back_reduction/2, 0]) {
            circle(rear_core_handle_hole_radius, true);
            translate([0, rear_core_handle_length-2*rear_core_handle_radius, 0]) circle(rear_core_handle_hole_radius, true);
        }
        translate([(rear_core_width-rear_core_back_reduction-2*rear_core_cover_casing_margin)*0.17+rear_core_cover_casing_margin + rear_core_back_reduction/2, (rear_core_height-rear_core_back_reduction-2*rear_core_cover_casing_margin)*0.35+rear_core_cover_casing_margin + rear_core_back_reduction/2, 0]) {
            usb_hole();
            translate([0, rear_core_usb_height + rear_core_usb_margin, 0]) usb_hole();
            translate([0, rear_core_power_radius + 1.5*rear_core_usb_height + 2*rear_core_usb_margin, 0]) circle(rear_core_power_radius);
        }
        translate([(rear_core_width-rear_core_back_reduction-2*rear_core_cover_casing_margin)*0.3+rear_core_cover_casing_margin + rear_core_back_reduction/2, rear_core_height - rear_core_back_reduction/2 - rear_core_cover_casing_margin - (rear_core_height-rear_core_back_reduction-2*rear_core_cover_casing_margin)*0.3, 0]) {
            translate([rear_core_trigger_radius + rear_core_usb_margin/2, 0, 0]) circle(rear_core_trigger_radius);
            translate([-rear_core_trigger_radius - rear_core_usb_margin/2, 0, 0]) circle(rear_core_trigger_radius);
        }
    }
}

linear_extrude(sheet_thickness) rear_core_2_4();