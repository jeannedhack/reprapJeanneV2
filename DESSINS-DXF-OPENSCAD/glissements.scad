/*
* ReprapJeanne V2 
*
* Systeme de fixation des roulements à bille 
* le long des axes
* 
* NON TERMINE
*
* Copyleft (see license file):
* hackerspace Jeanne d'Hack http://www.jeannedhack.org
* Gnieark https://blog-du-grouik.tinad.fr
*
*/
glissement();
module glissement(){
  difference(){
	  union(){
		  //Profils de la pièce
		  linear_extrude (height=7.5)
			    import (file="profil-axe.dxf", layer="guides-profil-pour-3D", $fn=100);
		  
		  translate( [0,0,7.499]) linear_extrude (height=5.001)
			    import (file="profil-axe.dxf", layer="guides-profil-pour-3D2", $fn=100);

		  translate( [0,0,12.499]) linear_extrude (height=7.5)
			    import (file="profil-axe.dxf", layer="guides-profil-pour-3D", $fn=100);

		  //les déborts pour appuyer sur la tranche des roulements à billes
		  translate([-5,31.5,5]) rotate([90,0,0]) bumpForBearing();
		  translate([-5,9.5,15]) rotate([90,0,0]) bumpForBearing();
		  translate([40,31.5,15]) rotate([90,0,0]) bumpForBearing();
		  translate([40,9.5,5]) rotate([90,0,0]) bumpForBearing();
		  translate([3.5,-5,5]) rotate([90,0,90]) bumpForBearing();
		  translate([25.5,-5,15]) rotate([90,0,90])bumpForBearing();
		  translate([3.5,40,15]) rotate([90,0,90]) bumpForBearing();
		  translate([25.5,40,5]) rotate([90,0,90]) bumpForBearing();
	  }
	  union(){
	  //trous pour les vis de fixation des roulements
		  translate([-20,-5,5]) rotate([90,0,90]) cylinder(r=1.5,h=35,$fn=50);
		  translate([20,-5,15]) rotate([90,0,90]) cylinder(r=1.5,h=35,$fn=50);
		  translate([-20,40,15]) rotate([90,0,90]) cylinder(r=1.5,h=35,$fn=50);
		  translate([20,40,5]) rotate([90,0,90]) cylinder(r=1.5,h=35,$fn=50);

		  translate([-5,20,5]) rotate([270,0,0]) cylinder(r=1.5,h=35,$fn=50);
		  translate([-5,-20,15]) rotate([270,0,0]) cylinder(r=1.5,h=35,$fn=50);
		  translate([40,20,15]) rotate([270,0,0]) cylinder(r=1.5,h=35,$fn=50);
		  translate([40,-20,5]) rotate([270,0,0]) cylinder(r=1.5,h=35,$fn=50);

	  //trous élargis pour les têtes des vis
		  translate([-20,-5,5]) rotate([90,0,90]) cylinder(r=4,h=20,$fn=50);
		  translate([38,-5,15]) rotate([90,0,90]) cylinder(r=4,h=20,$fn=50);
		  translate([-20,40,15]) rotate([90,0,90]) cylinder(r=4,h=20,$fn=50);
		  translate([38,40,5]) rotate([90,0,90]) cylinder(r=4,h=20,$fn=50);

		  translate([-5,38,5]) rotate([270,0,0]) cylinder(r=4,h=20,$fn=50);
		  translate([40,38,15]) rotate([270,0,0]) cylinder(r=4,h=20,$fn=50);

		  translate([-5,-22,15]) rotate([270,0,0]) cylinder(r=4,h=20,$fn=50);
		  translate([40,-22,5]) rotate([270,0,0]) cylinder(r=4,h=20,$fn=50);

		  //trou vis rotule
		  translate([-40,52,10])rotate([90,0,90]) cylinder(r=1.5,h=120,$fn=50);

			//trous pour fixer la courroie
			translate ([21.5,35,14]) rotate([0,0,90]) cube([20,8,4]);
			translate ([21.5,35,3]) rotate([0,0,90]) cube([20,8,4]);
		
	  }
  }
}
module bumpForBearing(){
	translate([0,0,-0.999])cylinder (r=3, h=1,$fn=50); 
	 cylinder (r1=3, r2=2, h=1, $fn=50);
 	 translate([0,0,5])cylinder (r1=2, r2=3, h=1, $fn=50);
	translate([0,0,5.999]) cylinder (r=3, h=1,$fn=50); 

}
