/// scrHitPlayer()

iframes = 150;
audio_play_sound(sndDeath,0,0);

if (global.playerHP[PlayerID] == 1){
    instance_create_battle(0, 0, objDangerScreen);
    audio_play_sound(sndDanger, 0, false);
}
//global.playerHP[PlayerID] --;