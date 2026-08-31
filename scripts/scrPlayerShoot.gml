///scrPlayerShoot

if (bulletCount < 4)
{
    var bullet = instance_create(x, y , objBullet);
    bullet.ID = id;

    bulletCount ++;
    audio_play_sound(sndShoot, 0, false);
}