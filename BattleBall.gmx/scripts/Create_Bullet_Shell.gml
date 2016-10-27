///Create_Bullet_Shell()
var bullet = instance_create(x,y,Obj_Bullet_Shell);
with(bullet)
{
    physics_apply_impulse(x,y,random_range(1,2) * -other.image_xscale, random_range(-1,-2));
}
