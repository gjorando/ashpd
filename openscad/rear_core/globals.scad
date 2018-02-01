/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear_core/globals.scad: global variables that apply to pieces from the rear core.
 *
 * NB.: units are assumed to be millimeters.
 */

include <../globals.scad>

/* Total height of the rear core */
rear_core_height = 140;
/* Total length of the rear core */
rear_core_length = 187;
/* Total width of the rear core */
rear_core_width = 118;
/* Amount of reduction on the back lip */
rear_core_back_reduction = 24;
/* Amount of reduction on the front lip */
rear_core_front_reduction = 6;
/* Length of both front and back lips */
rear_core_reduction_length = 12;

/* Distance between the intermediary backplates */
rear_core_intermediary_backplate_spacing = 40;

/* Width of a reinforcing bar */
rear_core_reinforcing_bar_width = 20;
/* Margin for the pin of the reinforcing bar */
rear_core_reinforcing_bar_margin = 4;
/* Deduced size of a hole for the pin of the reinforcing bar */
rear_core_reinforcing_bar_hole_width = rear_core_reinforcing_bar_width - 2*rear_core_reinforcing_bar_margin;

/* Lips are built by stacking multiple layers, and because it's a lip we need to reduce each layer so that we can then get a nice slope. */
rear_core_back_reduction_for_plates = ((sheet_thickness*rear_core_back_reduction)/(2*rear_core_reduction_length)) * 2;
/* Demo: Let's do some trigonometry. Take a right-angled triangle.
    |\
    | \ h
  r |  \
    |___\
      t
      
   We know t (sheet_thickness) and the angle between r (rear_core_back_reduction_for_plates) and the hypotenuse h, let's call this angle a.
   
   a = atan(2*rear_core_reduction_length/rear_core_back_reduction)
   
   We're looking for r.
   We know by definition that tan(a) = sheet_thickness/rear_core_back_reduction_for_plates
   => 2*rear_core_reduction_length/rear_core_back_reduction = sheet_thickness/rear_core_back_reduction_for_plates
   => rear_core_back_reduction_for_plates = (sheet_thickness*rear_core_back_reduction)/(2*rear_core_reduction_length)
   
   Then we multiply by two because the reduction occurs on each side.
   
   qed.
*/
/* How many plates do we need (may vary especially if you change the sheet_thickness. Ideally it *should* be at least 3, because we need one plate for the screws, and two more for the cover casing. */
rear_core_back_total_n_plates = ceil(rear_core_back_reduction/rear_core_back_reduction_for_plates);
/* Margin for the cover casing */
rear_core_cover_casing_margin = 4;
/* diameter of the hole for the screws of the cover */
rear_core_cover_screws_hole_radius = 2;
rear_core_cover_screws_hole_support_margin = 2;