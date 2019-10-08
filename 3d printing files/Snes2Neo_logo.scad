/* SNES2Neo shell top (logo)
   (c) R.Edwards 2018
*/

width=50;
height=26;
thickness=0.4;

union() {
    translate ([3,15,thickness]) {
        linear_extrude(height = 0.4) {
            text("Snes 2", font = "Impact:style=Regular", size = 9);
        }
    }
    translate ([3,3,thickness]) {
        linear_extrude(height = 0.4) {
            text("  NeoGeo", font = "Impact:style=Regular", size = 9);
        }
    }
    cube([width, height, thickness]);
}