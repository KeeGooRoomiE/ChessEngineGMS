/// @description Rotation

x = 500 + lengthdir_x(point_distance(x,y,500,500), angle);
y = 500 + lengthdir_y(point_distance(x,y,500,500), angle);

angle = (angle + angle_step) % 360;

if image_alpha<0.4
{
    image_alpha+=0.001
}
else
{
    if image_alpha>0
    {
        image_alpha-=0.001
    }
}