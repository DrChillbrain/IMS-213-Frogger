/// @description Insert description here
if moving = true {
if targetx > x
{ x+=2;
}
if targetx < x
{ x-=2;
}
if targety > y {
y+=2	
}
if targety < y {
y-=2	
}
if targetx = x and targety = y {
moving = false;	
}
}
if place_meeting(x,y,obj_lilypadleft) and moving = false {
x-=1	
}
if place_meeting(x,y,obj_lilypadright) and moving = false {
x+=1	
}
if !place_meeting(x,y,obj_lilypadright) and !place_meeting(x,y,obj_lilypadleft) and place_meeting(x,y,obj_watertile) and moving = false {
Lose();
}