/// scrEnemyBullet(boss,[repeat])
var BossType = argument[0];
var Repeat = 1;
if (argument_count > 1) Repeat = argument[1];

repeat(Repeat){
    with(instance_create(x,y,objEnemyBulletSpawn)){
        XX = (!scrGetPlayerID()) * 1280;
        YY = 800;
        Boss = BossType;

        event_user(0);
    }
}