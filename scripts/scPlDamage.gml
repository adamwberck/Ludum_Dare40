///scPlDamage(damage)
var damage = argument0;
if(!hurt){
    audio_play_sound(hurtSound,5,false);
    action=RUN;
    rotate=0;
    oPlayerStats.hp-= damage;
    state = scHurt;
    alarm[2] = 200;
    hurt = true;

    if(!global.freeze){
        //global.freeze=true;
        
        if(oPlayerStats.hp<=0){
            alarm[3] = abs((room_height-y+30));
            instance_create(x,y,oPlayerCorpse);
            visible=false;
        }else{
            alarm[3] = 60;
        }
    }
    
}
