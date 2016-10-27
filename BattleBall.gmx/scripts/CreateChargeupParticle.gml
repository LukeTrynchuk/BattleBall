///CreateChargeupParticle()
var inst = instance_create(x + choose(random_range(-50,-30), random_range(30,50)), y + choose(random_range(-50,-30), random_range(30,50)), Obj_Charge_eff); 
with(inst)
{
    myPlayer = other.myPlayer;
}
