/* Snes 2 Neo Geo DB15 shell (bottom)
   (c) R.Edwards 2019
*/

cart_length=60; // 60
cart_width=50;
cart_height=9;
screw_sep = 39.5;
front_thickness = 1.6;
sides_thickness = 1.6 - 0.05;
rim_height = 1;
port_width = 39;
port_height = 12;
screw_radius = 3;
screw_from_edge = 1;

difference() {
    union() {
        difference() {
            // main shell
            cube([cart_length, cart_width, cart_height]);
            // rims
            translate([sides_thickness/2, sides_thickness/2, cart_height-rim_height])
                cube([cart_length-sides_thickness,
                    cart_width-sides_thickness, rim_height]);
            // make hollow
            translate([sides_thickness, sides_thickness, front_thickness])
                cube([cart_length-sides_thickness*2,
                    cart_width-sides_thickness*2,
                    cart_height-front_thickness]);
            // cutout snes port
            translate([0, (cart_width - port_width)/2, cart_height - port_height/2])
                translate([-sides_thickness/2, 0, 0])
                    union() {
                        cube([sides_thickness*2, port_width-port_height/2, port_height]);
                        translate([0,0,port_height/2])
                            rotate([0,90,0]) {
    //                            cylinder(h = sides_thickness*2, r1 = port_height/2, r2 = port_height/2,  $fs = 1);
                                translate([0, port_width-port_height/2, 0])
                                    cylinder(h = sides_thickness*2, r1 = port_height/2, r2 = port_height/2,  $fs = 1);
                            }
               }
        }
        translate([17, cart_width-screw_radius-screw_from_edge, 0])
            difference() {
                cylinder(h = cart_height-rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
                cylinder(h = cart_height-rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
            }
        translate([17, screw_radius+screw_from_edge, 0])
            difference() {
                cylinder(h = cart_height-rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
                cylinder(h = cart_height-rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
            }
        translate([52, cart_width-screw_radius-screw_from_edge, 0])
            difference() {
                cylinder(h = cart_height-rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
                cylinder(h = cart_height-rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
            }
        translate([52, screw_radius+screw_from_edge, 0])
            difference() {
                cylinder(h = cart_height-rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
                cylinder(h = cart_height-rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
            }
        // cable grip
        translate([50, (cart_width-26)/2, 0])
            cube([cart_length-50, 26, cart_height-rim_height]);
    }
    // cutout cable hole
    translate([cart_length-20, cart_width/2, cart_height])
        rotate([0,90,0])
            cylinder(h = 20, r1 = 2.8, r2 = 2.8,  $fs = 1);
    // screw top
    translate([17, cart_width-screw_radius-screw_from_edge, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([17, cart_width-screw_radius-screw_from_edge, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 1.8,  $fs = 1);
    translate([17, screw_radius+screw_from_edge, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([17, screw_radius+screw_from_edge, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 1.8,  $fs = 1);
    translate([52, cart_width-screw_radius-screw_from_edge, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([52, cart_width-screw_radius-screw_from_edge, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 1.8,  $fs = 1);
    translate([52, screw_radius+screw_from_edge, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([52, screw_radius+screw_from_edge, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 1.8,  $fs = 1);
    // holes for cable grip
    translate([55, cart_width/2-8, 0])
        cylinder(h = cart_height-rim_height, r1 = 2, r2 = 2,  $fs = 1);
    translate([55, cart_width/2+8, 0])
        cylinder(h = cart_height-rim_height, r1 = 2, r2 = 2,  $fs = 1);
    // screw tops
    translate([55, cart_width/2-8, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([55, cart_width/2-8, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 2,  $fs = 1);
    translate([55, cart_width/2+8, 0])
        cylinder(h = 0.6, r1 = 3.5, r2 = 3.5,  $fs = 1);
    translate([55, cart_width/2+8, 0.6])
        cylinder(h = front_thickness-0.6, r1 = 3.5, r2 = 2,  $fs = 1);
    
}
//            cylinder(h = sides_thickness, r1 = port_height/2, r2 = port_height/2,  $fs = 1);

