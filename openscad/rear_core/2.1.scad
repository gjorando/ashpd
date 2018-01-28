// units are assumed to be millimeters

sheet_thickness = 4;

rear_core_height = 140;
rear_core_length = 187;
rear_core_width = 118;
rear_core_back_reduction = 24;
rear_core_reinforcing_bar_width = 18;

// curves accuracy
$fn = 360;

/* The base shape. Apply a reduction to make it smaller. */
module base_shape(reduction=0) {
    hull() {
        circle((rear_core_width-reduction)/2);
        translate([0, rear_core_height-rear_core_width, 0]) circle((rear_core_width-reduction)/2);
    }
}

/* A hole for the reinforcement bar. Default values are for the two primary reinforcement holes. */
module reinforcement_bar_hole(width=rear_core_reinforcing_bar_width, position=[(rear_core_width-sheet_thickness)/2, (rear_core_height-rear_core_width)/2, 0]) {
    translate(position) square([sheet_thickness, width], true);
}

difference() {
    // External shape
    base_shape();
    // Internal shape
    base_shape(reduction=rear_core_back_reduction);
    // Right reinforcement_bar_hole
    reinforcement_bar_hole();
    // Left reinforcement_bar_hole
    mirror([1, 0, 0]) reinforcement_bar_hole();
    // Bottom reinforcement bar_hole
    translate([0, -(rear_core_width-rear_core_back_reduction/2)/2, 0]) rotate([0, 0, 90]) reinforcement_bar_hole(position=[0, 0, 0], width=rear_core_reinforcing_bar_width-4);
}