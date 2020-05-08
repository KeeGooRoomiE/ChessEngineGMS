/// @description Sets behavior to stars
image_single=0;

angle=point_direction(x,y,500,500);                             //current angle
angle_step=clamp((point_distance(x,y,500,500)/500),0.001,0.1);  //speed

if point_distance(x,y,500,500)<64                               //speed downwarder
{
    angle_step=angle_step*0.5;
}

image_alpha=random_range(0.4,0.8);                              //alpha
image_xscale=(random_range(1,2));  
image_yscale=image_xscale;                                      //scale