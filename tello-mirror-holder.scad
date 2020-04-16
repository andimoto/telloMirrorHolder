mirrorX=25;
mirrorY=25;
mirrorH=4;

thickness=1.5;

module mirrorHold()
{
  difference(){
    cube([mirrorX+thickness*2, mirrorY+thickness, mirrorH+thickness*2]);
    mirrorHoldCutout();
  }
}

module mirrorHoldCutout()
{
  translate([thickness,thickness,thickness])  cube([mirrorX, mirrorY+1, mirrorH]);
  translate([thickness+1,0-0.5,-0.5])  cube([mirrorX-2, mirrorY+thickness+1, thickness+2]);
}

module telloMirrorHolder(){
  rotate([45,0,0]){
    #translate([thickness,thickness,thickness]) cube([mirrorX, mirrorY, mirrorH]);
    mirrorHold();
  }
}

telloMirrorHolder();
