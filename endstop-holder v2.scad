// PRUSA Mendel  
// Endstop holder
// Used to attach endstops to 8mm rods
// GNU GPL v2
// Josef Průša
// josefprusa@me.com
// prusadjs.cz
// http://www.reprap.org/wiki/Prusa_Mendel
// http://github.com/prusajr/PrusaMendel

include <configuration.scad>
module endstop(){
outer_diameter = m8_diameter/2+3.3;
screw_hole_spacing = 9; //20;

difference(){
	union(){


		translate([outer_diameter, outer_diameter, 0]) cylinder(h =10, r = outer_diameter, $fn = 20);
		translate([outer_diameter, 0, 0]) cube([15.5,outer_diameter*2,10]);
		translate([-27, 0, 0]) cube([35, 4, 10]);
	}




	translate([9, outer_diameter/2+1, 0]) cube([18,05,20]);
	translate([outer_diameter, outer_diameter, 0]) cylinder(h =20, r = m8_diameter/2, $fn = 18);
	translate([17, 17, 5]) rotate([90, 0, 0]) cylinder(h =20, r = m4_diameter/2, $fn = 10);
	translate([-14, 17, 5]) rotate([90, 0, 0]) cylinder(h =20, r =m2_screw_radius, $fn = 10);
	#translate([-(14+screw_hole_spacing), 17, 5]) rotate([90, 0, 0]) cylinder(h =20, r =m2_screw_radius, $fn = 10);
}
}
endstop();
