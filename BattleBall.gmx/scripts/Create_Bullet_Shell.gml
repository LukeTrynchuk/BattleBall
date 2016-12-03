///Create_Bullet_Shell()
var bullet = instance_create(x,y,Obj_Bullet_Shell);                                             //Create a bullet shell instance
with(bullet)                                                                                    //With bullet shell
{
    physics_apply_impulse(x,y,random_range(1,2) * -other.image_xscale, random_range(-1,-2));    //Apply a linear impulse
}
