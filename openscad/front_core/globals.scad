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
/* distance from the tubular core to the bottom of the piece */
front_core_tube_elevation = 47;
/* outer diameter of the transparent tubular core */
front_core_tube_diameter = 55;
/* lip inner slope length */
front_core_lip_inner_slope = 5;
/* thickness of the PVC tube for the lower part of the front core */
echo("WARNING: please check lower_tube_thickness");
lower_tube_thickness = 6;