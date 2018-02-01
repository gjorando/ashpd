/* Copyright 2018 Guillaume JORANDON
 * 
 * This file is distributed under the terms of the MIT License.
 * Check https://opensource.org/licenses/MIT for more details.
 * 
 * ./rear-core/globals.scad: Some global variables that apply to pieces from the rear core.
 *
 * NB.: units are assumed to be millimeters.
 */

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

