#include "lambda.h"

#define	SPR_W	640
#define	SPR_H	480
#define	ADD_X	1
#define	ADD_Y	2

/*
@‰æ–Ê“à‚ð”½ŽË‚µ‚È‚ª‚ç“®‚­ƒTƒ“ƒvƒ‹
*/
main()
{
	var back, move, sz[2], x, y, x1, y1, a1, addx, addy, txt;
	var flag1, c1, c2, c3, x2, y2, x3, y3, score1;
	var ani1,ani2,ani3;
	var c4,x4,y4,score2;
	var v1;
	var j1;
	sprSetLevel(66);
	timeSetFPS(30);
	txt = imgCreate(640,16,4,0);
	back = imgLoad("nawa_005.bmp", 1, 0);
	imgSetCurrent(back);
	x1=180;y1=180;
	x2=0;y2=60;
	x3=460;y3=160;
	x4=100;y4=300;
	score1=0;
	score2=0.1;
	ani3=3;
	v1=-10;
	a1=1;
	c1 = imgLoad("chara.png", 2, 0);
	c2 = imgLoad("nawa_004.bmp", 4, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		imgSetCurrent(txt);
		txtSetColor(255, 255, 255);
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
	inpSetCurrent(inpGetDevice(1));
	sprRenderScreen();

	while(true)
	{
		imgSetCurrent(c1);
		inpClear();
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				if(flag1==1){
				flag1=0;
	c1 = imgLoad("chara2.png", 3, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	j1=1;
				}
			
		}
		if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				if(flag1==0){
				flag1=1;
				}
		}
		if(j1==1){
		y1+=v1;
		v1+=a1;
		imgSetPos(x1, y1);
		if(y1>180){
		y1=180;
		j1=0;v1=-10;
		}
		}
		ani1+=1;
		if((ani1>12)&&(ani1<25)){
	c2 = imgLoad("nawa_003.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>24)&&(ani1<37)){
	c2 = imgLoad("nawa_002.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>36)&&(ani1<49)){
	c2 = imgLoad("nawa_001.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>48)&&(ani1<61)){
	c2 = imgLoad("nawa_000.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>60)&&(ani1<73)){
	c2 = imgLoad("nawa_001.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>72)&&(ani1<85)){
	c2 = imgLoad("nawa_002.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if((ani1>84)&&(ani1<97)){
	c2 = imgLoad("nawa_003.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
		}else if(ani1>96){
	c2 = imgLoad("nawa_004.bmp", 4, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani1=0;
	if(y1!=180){
		score1+=10;
		}else{
		score1-=10;
		}
		}
		score2+=0.1;
		imgSetCurrent(txt);
		imgFill(0, 0, 0);
		txtSetPos(0, 0);
		txtOut("You play with Step controller.");
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
		sprRenderWait();
	}
}
