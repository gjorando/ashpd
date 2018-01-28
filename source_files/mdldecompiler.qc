$cd "D:\Guillaume JORANDON\Bureau"
$modelname "weapons\w_portalgun.mdl"
$model "w_portalgun" "w_portalgun_reference.dmx.smd"
$cdmaterials "models\weapons\w_models\portalgun\"
$cdmaterials ""
$hboxset "default"
$hbox 0 "weapon_bone" -6.285  -6.485  -24.145  3.449  5.481  0.000
// Model uses material "models/weapons/w_models/portalgun/w_portalgun.vmt"
$attachment "muzzle" "weapon_bone" 0.00 0.00 -21.00 rotate 90.00 -180.00 0.00
$attachment "Arm1_attach1" "weapon_bone" -3.50 0.00 -17.50 rotate -0.00 0.00 0.00
$attachment "Arm1_attach2" "weapon_bone" -5.70 0.00 -19.80 rotate -0.00 0.00 0.00
$attachment "Arm1_attach3" "weapon_bone" -4.80 0.00 -24.10 rotate -0.00 0.00 0.00
$attachment "Arm2_attach1" "weapon_bone" 1.50 -3.80 -17.30 rotate -0.00 0.00 0.00
$attachment "Arm2_attach2" "weapon_bone" 2.50 -5.50 -19.00 rotate -0.00 0.00 0.00
$attachment "Arm2_attach3" "weapon_bone" 2.50 -5.00 -23.70 rotate -0.00 0.00 0.00
$attachment "Arm3_attach1" "weapon_bone" 1.50 2.90 -17.30 rotate -0.00 0.00 0.00
$attachment "Arm3_attach2" "weapon_bone" 2.50 4.60 -19.00 rotate -0.00 0.00 0.00
$attachment "Arm3_attach3" "weapon_bone" 2.50 4.00 -23.70 rotate -0.00 0.00 0.00
$attachment "Body_light" "weapon_bone" -4.50 -0.50 -8.20 rotate -0.00 0.00 0.00
$attachment "Beam_point1" "weapon_bone" -1.50 -0.50 -15.30 rotate -0.00 0.00 0.00
$attachment "Beam_point2" "weapon_bone" -1.50 -0.50 -14.15 rotate -0.00 0.00 0.00
$attachment "Beam_point3" "weapon_bone" -1.50 -0.50 -12.80 rotate -0.00 0.00 0.00
$attachment "Beam_point4" "weapon_bone" -1.50 -0.50 -11.55 rotate -0.00 0.00 0.00
$attachment "Beam_point5" "weapon_bone" -1.50 -0.50 -10.30 rotate -0.00 0.00 0.00
$attachment "Inside_effects" "weapon_bone" -1.50 -0.50 -18.00 rotate -0.00 0.00 0.00
$surfaceprop "metal"
$illumposition -12.072 -1.418 -0.502
$sequence idle "idle" fps 30.00
$collisionmodel "phymodel.smd" {

	$mass 1.0
	$inertia 1.00
	$damping 0.00
	$rotdamping 0.00
}
