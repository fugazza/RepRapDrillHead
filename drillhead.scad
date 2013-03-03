// drilling head
// for hobby model Bionic AD-19
// 12V DC; 500mA; 12,000rpm

difference() {
	union() {
		cylinder(h=67, r=20);
		translate([-30,-20,0]) cube([60,40,5]);
		translate([-30,15,0]) cube([60,5,67]);
		translate([-5,-28,24]) cube([10,28,43]);
	}

	inner_shape_of_drill();	

	for(i=[-25,25]) {
		translate([i,0,-1]) cylinder(h=10, r=3.5/2/cos(30));
		translate([i,0,3]) rotate([0,0,90]) cylinder(h=10, r=6/2/cos(30), $fn=6);
	}

	for(i=[33,60]) {
		translate([-10,-23,i]) rotate([0,90,0]) cylinder(h=20, r=3.5/2/cos(30));
		translate([-10,-23,i]) rotate([90,0,90]) cylinder(h=7, r=6/2/cos(30), $fn=6);
	}

	for(i=[-1,1]) {
		translate([i*30,14,5]) rotate([0,-45+i*31,0]) cube([100,10,100]);
	}

	translate([-6,-20,24]) rotate([135,0,0]) cube([12,15,15]);
	
}

module inner_shape_of_drill() {
	union() {
		translate([0,0,-1]) cylinder(h=8-2,r=22.5/2);
		translate([0,0,4.9]) cylinder(h=9,r1=22.5/2,r2=26/2);
		translate([0,0,13.8]) cylinder(h=10,r1=26/2,r2=37/2);
		translate([0,0,23.7]) cylinder(h=44,r1=37/2,r2=35.5/2);
		translate([-5,-30,5]) cube([10,30,19]);
		translate([-1,-30,24.3]) cube([2,30,70]);
		for(i=[0,1,2,4,5,6]) {
			rotate([0,0,-i*30]) translate([0,-3,24]) cube([30,6,1]);
		}
	}
}