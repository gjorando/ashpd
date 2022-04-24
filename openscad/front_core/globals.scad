/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./front_core/globals.scad: global variables that apply to pieces from the front core.
 *
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>

/* Total height of the front core */
front_core_height = 128;
/* Total length of the front core */
front_core_length = 161;
/* Total width of the front core */
front_core_width = 100;
/* height from bottom to the first lip */
front_core_partial_height = 61;
/* height from bottom of the piece to the top of the inner floor */
front_core_inner_floor_height = 40;
/* relative height between the bottom and the top of the lip */
front_core_lip_height = 4;
/* how much the lip reduces the inner core container */
front_core_lip_reduction = 16;
/* distance from the tubular core (including the back border) to the bottom of the piece */
front_core_tube_elevation = 42;
/* outer diameter of the transparent tubular core */
front_core_tube_diameter = 55;
/* size of the back border of the transparent core */
front_core_tube_back_border_size = 5;
/* lip inner slope width */
front_core_lip_inner_slope = 5;
/* thickness of the PVC tube for the lower part of the front core */
front_core_lower_tube_thickness = 3;
/* thickness of the transparent center core */
front_core_center_core_thickness = 3;
/* length of the center core tube, including the extra space in the rear core, and the extra space on the front */
front_core_center_core_length = 117 + 2*sheet_thickness;
/* distance from the front of the piece */
front_core_center_core_offset = 44;
/* length of holes to attach the floor of the piece */
front_core_floor_hole = 10;
/* distance between the two attaching holes of the floor */
front_core_floor_hole_distance = 24;
/* length of holes to attach the inner walls of the piece */
front_core_inner_walls_hole = front_core_floor_hole;
/* hole of the junction screws */
front_core_junction_hole_diameter = 5;
/* hole of the junction nuts */
front_core_junction_nut_diameter = front_core_junction_hole_diameter*2;
/* length of the front core if we remove the junction with 1B */
front_core_partial_length = 110 + 2*sheet_thickness;
