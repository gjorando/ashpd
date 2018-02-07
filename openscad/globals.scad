/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./globals.scad: some global variables that apply to every piece.
 *
 * NB.: units are assumed to be millimeters.
 */

/*Thickness of laser cutted sheets */
sheet_thickness = 4;
/* Margin on the printsheet */
print_margin = 3;
/* Curves accuracy */
$fn = 360;

/* Distance between the border of the bottom of the frontest plate of the rear_core and the bottom of the front core */
cores_offset = 16;