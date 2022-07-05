#include<stdio.h>
int X0 = 1, X1 = 0, X2 = 0, X20 = 1, X21 = 0, X22 = 0, X220 = 1, X221 = 0, X222 = 0, X223 = 0, X224 = 0, X23 = 0, X230 = 1, X231 = 0, X232 = 0, X233 = 0, X234 = 0, X235 = 0, X24 = 0, X3 = 0, X4 = 0, X5 = 0, X6 = 0;
void grafcet0();
void datapath0();
void action0();
void action1();
void action2();
void grafcet2();
void datapath2();
void action3();
void action4();
void action5();
void action6();
void action20();
void action21();
void action22();
void grafcet22();
void datapath22();
void action23();
void grafcet23();
void datapath23();
void action24();
void action220();
void action221();
void action222();
void action223();
void action224();
void action230();
void action231();
void action232();
void action233();
void action234();
void action235();
void main()
{
printf("X0 = %d,X1 = %d,X2 = %d,X3 = %d,X4 = %d,X5 = %d,X6 = %d\n",X0 ,X1 ,X2 ,X3 ,X4 ,X5 ,X6 );
while(1)
{
datapath0();
grafcet0();
printf("X0 = %d,X1 = %d,X2 = %d,X3 = %d,X4 = %d,X5 = %d,X6 = %d\n",X0 ,X1 ,X2 ,X3 ,X4 ,X5 ,X6 );
}
}
void grafcet0()
{

	if((X0 == 1) && (R0))
	{
		X0 = 0;
		X1 = 1;
		return;
	}

	if((X1 == 1) && (R1))
	{
		X1 = 0;
		X2 = 1;
		return;
	}

	if((X2 == 1) && (X24))
	{
		X2 = 0;
		X3 = 1;
		X4 = 1;
		return;
	}

	if((X3 == 1)&& (X5 == 1))
	{
		X3 = 0;
		X5 = 0;
		X6 = 1;
		return;
	}

	if((X4 == 1) && (R4))
	{
		X4 = 0;
		X5 = 1;
		return;
	}

	if((X6 == 1) && (R6))
	{
		X6 = 0;
		X0 = 1;
		return;
	}

}
void grafcet2()
{

	if((X20 == 1) && (X2))
	{
		X20 = 0;
		X21 = 1;
		return;
	}

	if((X21 == 1) && (R21))
	{
		X21 = 0;
		X22 = 1;
		return;
	}

	if((X22 == 1) && (X224))
	{
		X22 = 0;
		X23 = 1;
		return;
	}

	if((X23 == 1) && (X235))
	{
		X23 = 0;
		X24 = 1;
		return;
	}

	if((X24 == 1) && (1))
	{
		X24 = 0;
		X20 = 1;
		return;
	}

}
void grafcet22()
{

	if((X220 == 1) && (R220))
	{
		X220 = 0;
		X221 = 1;
		return;
	}

	if((X221 == 1) && (R221))
	{
		X221 = 0;
		X222 = 1;
		return;
	}

	if((X222 == 1) && (R222))
	{
		X222 = 0;
		X223 = 1;
		return;
	}

	if((X223 == 1) && (R223))
	{
		X223 = 0;
		X224 = 1;
		return;
	}

	if(X224 == 1)
	{
		if(x<0)
		{
			X224 = 0;
			X220 = 1;
		}
		else if(x>=0)
		{
			X224 = 0;
			X222 = 1;
		}
		return;
	}

}
void grafcet23()
{

	if((X230 == 1) && (X23))
	{
		X230 = 0;
		X231 = 1;
		return;
	}

	if(X231 == 1)
	{
		if(R231_1)
		{
			X231 = 0;
			X232 = 1;
		}
		else if(R231_2)
		{
			X231 = 0;
			X234 = 1;
		}
		return;
	}

	if((X232 == 1) && (R232))
	{
		X232 = 0;
		X233 = 1;
		return;
	}

	if(X233 == 1 && (R233))
	{
		X233 = 0;
		X235 = 1;
		return;
	}

	if(X234 == 1 && (R234))
	{
		X234 = 0;
		X235 = 1;
		return;
	}


	if((X235 == 1) && (1))
	{
		X235 = 0;
		X230 = 1;
		return;
	}

}
void datapath0()
{
if(X0 == 1)
action0();
if(X1 == 1)
action1();
if(X2 == 1)
action2();
if(X3 == 1)
action3();
if(X4 == 1)
action4();
if(X5 == 1)
action5();
if(X6 == 1)
action6();
}
void datapath2()
{
if(X20 == 1)
action20();
if(X21 == 1)
action21();
if(X22 == 1)
action22();
if(X23 == 1)
action23();
if(X24 == 1)
action24();
}
void datapath22()
{
if(X220 == 1)
action220();
if(X221 == 1)
action221();
if(X222 == 1)
action222();
if(X223 == 1)
action223();
if(X224 == 1)
action224();
}
void datapath23()
{
if(X230 == 1)
action230();
if(X231 == 1)
action231();
if(X232 == 1)
action232();
if(X233 == 1)
action233();
if(X234 == 1)
action234();
if(X235 == 1)
action235();
}
void action0()
{
printf("action0 activate !!\n");
}
void action1()
{
printf("action1 activate !!\n");
}
void action2()
{
printf("action2 activate !!\n");
datapath2();
grafcet2();
printf("X20 = %d,X21 = %d,X22 = %d,X23 = %d,X24 = %d\n",X20 ,X21 ,X22 ,X23 ,X24 );
}
void action3()
{
printf("action3 activate !!\n");
}
void action4()
{
printf("action4 activate !!\n");
}
void action5()
{
printf("action5 activate !!\n");
}
void action6()
{
printf("action6 activate !!\n");
}
void action20()
{
printf("action20 activate !!\n");
}
void action21()
{
printf("action21 activate !!\n");
}
void action22()
{
printf("action22 activate !!\n");
datapath22();
grafcet22();
printf("X220 = %d,X221 = %d,X222 = %d,X223 = %d,X224 = %d\n",X220 ,X221 ,X222 ,X223 ,X224 );
}
void action23()
{
printf("action23 activate !!\n");
datapath23();
grafcet23();
printf("X230 = %d,X231 = %d,X232 = %d,X233 = %d,X234 = %d,X235 = %d\n",X230 ,X231 ,X232 ,X233 ,X234 ,X235 );
}
void action24()
{
printf("action24 activate !!\n");
}
void action220()
{
printf("action220 activate !!\n");
}
void action221()
{
printf("action221 activate !!\n");
}
void action222()
{
printf("action222 activate !!\n");
}
void action223()
{
printf("action223 activate !!\n");
}
void action224()
{
printf("action224 activate !!\n");
}
void action230()
{
printf("action230 activate !!\n");
}
void action231()
{
printf("action231 activate !!\n");
}
void action232()
{
printf("action232 activate !!\n");
}
void action233()
{
printf("action233 activate !!\n");
}
void action234()
{
printf("action234 activate !!\n");
}
void action235()
{
printf("action235 activate !!\n");
}
