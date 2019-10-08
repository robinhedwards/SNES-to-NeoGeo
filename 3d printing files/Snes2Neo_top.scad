/* Snes 2 Neo Geo DB15 shell (top)
   (c) R.Edwards 2019
*/

cart_length=60; // 60
cart_width=50;
cart_height=13;
screw_sep = 39.5;
front_thickness = 1.6;
sides_thickness = 1.6 - 0.05;
rim_height = 0.6;
port_width = 39;
port_height = 12;
screw_radius = 3;
screw_from_edge = 1;

union() {
    difference() {
        // main shell
        union() {
            cube([cart_length, cart_width, cart_height]);
            // rim
            translate([sides_thickness/2, sides_thickness/2, cart_height])
                cube([cart_length-sides_thickness, sides_thickness/2, rim_height]);
            translate([sides_thickness/2, cart_width-sides_thickness, cart_height])
                cube([cart_length-sides_thickness, sides_thickness/2, rim_height]);
            translate([cart_length-sides_thickness, sides_thickness/2, cart_height])
                cube([sides_thickness/2, cart_width-sides_thickness, rim_height]);
        }
        // make hollow
        translate([sides_thickness, sides_thickness, front_thickness])
            cube([cart_length-sides_thickness*2,
                cart_width-sides_thickness*2,
                cart_height-front_thickness]);
        // cutout snes port
        translate([0, (cart_width - port_width)/2, cart_height - port_height/2])
            translate([-sides_thickness/2, port_height/2, 0])
                union() {
                    cube([sides_thickness*2, port_width-port_height/2, port_height]);
                    translate([0,0,port_height/2])
                        rotate([0,90,0])
                            cylinder(h = sides_thickness*2, r1 = port_height/2, r2 = port_height/2,  $fs = 1);
           }
        // cutout cable hole
        translate([cart_length-sides_thickness, cart_width/2, cart_height])
            rotate([0,90,0])
                cylinder(h = sides_thickness*2, r1 = 2.8, r2 = 2.8,  $fs = 1);
        // cutout led hole
        translate([36,10,0.3])
            cube([6, 1.5, front_thickness-0.3]);        
    }
    // screws
    translate([17, cart_width-screw_radius-screw_from_edge, 0])
        difference() {
            cylinder(h = cart_height+rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
            cylinder(h = cart_height+rim_height, r1 = 1.4, r2 = 1.4,  $fs = 1);
        }
    translate([17, screw_radius+screw_from_edge, 0])
        difference() {
            cylinder(h = cart_height+rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
            cylinder(h = cart_height+rim_height, r1 = 1.4, r2 = 1.4,  $fs = 1);
        }
    translate([52, cart_width-screw_radius-screw_from_edge, 0])
        difference() {
            cylinder(h = cart_height+rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
            cylinder(h = cart_height+rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
        }
    translate([52, screw_radius+screw_from_edge, 0])
        difference() {
            cylinder(h = cart_height+rim_height, r1 = screw_radius, r2 = screw_radius,  $fs = 1);
            cylinder(h = cart_height+rim_height, r1 = 1.8, r2 = 1.4,  $fs = 1);
        }

}


