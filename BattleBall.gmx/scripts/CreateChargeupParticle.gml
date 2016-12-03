///CreateChargeupParticle()
var inst = instance_create(x + choose(random_range(-50,-30), random_range(30,50)), y + choose(random_range(-50,-30), random_range(30,50)), Obj_Charge_eff); //Create the charge up particle 
with(inst)                                                                                                                                                  //With particle
{
    myPlayer = other.myPlayer;                                                                                                                              //Set the player for the particle
}
