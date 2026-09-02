///scrPlayerShoot

if (bulletCount < 4)
{
    var bullet = instance_create(x, y , objBullet);
    bullet.ID = id;
    bullet.PlayerID = PlayerID;
    bullet.hspeed = xScale * 16;
    with(bullet) event_user(0);

    bulletCount ++;
    audio_play_sound(sndShoot, 0, false);
}