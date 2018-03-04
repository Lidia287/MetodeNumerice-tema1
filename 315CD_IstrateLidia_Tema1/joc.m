function [] = joc()

mat = zeros(3,3);
%folosesc matricea pentru a afisa mutarile
%codific x cu 1
%codific 0 cu 2
scorX = 0;
scor0 = 0;
aleg = input("choose X or 0 \n","%s");
anterior = aleg;
%clc,clear

decizie = input("Continuati jocul ? da sau nu  \n","%s"); % decizie sub forma da sau nu

count = 0;

newgame = 0; %variabila folosita pentru a determina daca se trece la un nou joc 

while decizie == 'da'

if newgame == 1
printf("scorul este urmatorul : \n %d pentru X si %d pentru 0\n",scorX,scor0);
count = 0;
clc
anterior = aleg;
aleg = input("choose X or 0 \n","%s"); % optiunea de a alege X sau 0
if aleg != anterior
	scor0 = 0;
	scorX = 0;
	
endif

decizie = input("Continuati jocul ? da sau nu  \n","%s"); % decizie sub forma da sau nu

mat = zeros(3,3);
newgame = 0;
endif

linie = input("alege numarul liniei\n","%d"); %alegere linie
coloana = input("alege numarul coloanei \n","%d"); % alegere coloana

lin = str2num(linie);
col = str2num(coloana);



if aleg == 'X'
	mat(lin,col) = 1;  %codific locul in care a mutat jucatorul
endif

if aleg == '0'
	mat(lin,col) = 2;
endif
count++;

ok=0;
ind=1;
jnd=1;
if count < 9  %algoritm pentru mutarea calculatorului
while ok == 0
	if mat(ind,jnd) == 0
				
	if aleg == 'X'
	mat(ind,jnd) = 2;
	count++;
	endif

	if aleg == '0'
	mat(ind,jnd) = 1;
	count++;
	endif
	ok = 1;
	endif
	
	jnd++;
	if jnd == 4
	ind ++;
	jnd = 1;
	endif
	
	if ind == 4
	ok = 1;
	endif
	

endwhile
endif




%afisare tabla - cate 3 conditii la fiecare element din cele 9

%primul rand
if mat(1,1) == 1
	printf(" X | ");
endif

if mat(1,1) == 0
	printf("   | ");
endif

if mat(1,1) == 2
	printf(" 0 | ");
endif


if mat(1,2) == 1
	printf(" X | ");
endif

if mat(1,2) == 0
	printf("   | ");
endif

if mat(1,2) == 2
	printf(" 0 | ");
endif


if mat(1,3) == 1
	printf(" X\n");
endif

if mat(1,3) == 0
	printf("  \n");
endif

if mat(1,3) == 2
	printf(" 0\n");
endif

printf("------------\n");

%al doilea rand
if mat(2,1) == 1
	printf(" X | ");
endif

if mat(2,1) == 0
	printf("   | ");
endif

if mat(2,1) == 2
	printf(" 0 | ");
endif


if mat(2,2) == 1
	printf(" X | ");
endif

if mat(2,2) == 0
	printf("   | ");
endif

if mat(2,2) == 2
	printf(" 0 | ");
endif


if mat(2,3) == 1
	printf(" X\n");
endif

if mat(2,3) == 0
	printf("  \n");
endif

if mat(2,3) == 2
	printf(" 0\n");
endif

printf("------------\n");

%al treilea rand
if mat(3,1) == 1
	printf(" X | ");
endif

if mat(3,1) == 0
	printf("   | ");
endif

if mat(3,1) == 2
	printf(" 0 | ");
endif


if mat(3,2) == 1
	printf(" X | ");
endif

if mat(3,2) == 0
	printf("   | ");
endif

if mat(3,2) == 2
	printf(" 0 | ");
endif


if mat(3,3) == 1
	printf(" X\n");
endif

if mat(3,3) == 0
	printf("  \n");
endif

if mat(3,3) == 2
	printf(" 0\n");
endif

decizie = input("Continuati jocul ? da sau nu  \n","%s"); % decizie sub forma da sau nu



%verificare castigator
check = 0;
%prima linie
if mat(1,1) == mat (1,2) && mat(1,1)== mat(1,3)
	if mat(1,1) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;
	endif

	if mat(1,1) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1;
	endif
	newgame = 1;
	endif

endif

%a doua linie
if mat(2,1) == mat (2,2) && mat(2,1)== mat(2,3)
	if mat(2,1) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;
	endif

	if mat(2,1) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check =1;
	endif
	newgame = 1;
	endif

endif

%a treia linie
if mat(3,1) == mat (3,2) && mat(3,1)== mat(3,3)
	if mat(3,1) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;
	endif

	if mat(3,1) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1
	endif
	newgame = 1;
	endif

endif


%prima coloana
if mat(1,1) == mat (2,1) && mat(1,1)== mat(3,1)
	if mat(1,1) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;;
	endif

	if mat(1,1) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1;
	endif
	newgame = 1;
	endif

endif

%a doua coloana
if mat(1,2) == mat (2,2) && mat(1,2)== mat(3,2)
	if mat(1,2) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;
	endif

	if mat(1,2) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1;
	endif
	newgame = 1;
	endif

endif



%a treia coloana
if mat(1,3) == mat (2,3) && mat(1,3)== mat(3,3)
	if mat(1,3) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;;
	endif

	if mat(1,3) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1;
	endif
	newgame = 1;
	endif

endif

%prima diagonala
if mat(1,1) == mat (2,2) && mat(1,1)== mat(3,3)
	if mat(1,1) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;
	endif

	if mat(1,1) == 2
	
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check=1;
	endif
	newgame = 1;
	endif

endif

%a doua diagonala
if mat(1,3) == mat (2,2) && mat(1,3)== mat(3,1)
	if mat(2,2) == 1
	
	if check == 0
	printf("X este castigator\n");
	scorX++;
	check = 1;
	endif
	newgame = 1;	
	endif

	if mat(2,2) == 2
	if check == 0
	printf("0 este castigator\n");
	scor0++;
	check = 1;
	endif
	newgame = 1;
	endif

endif

if count >= 9 && newgame == 0  %daca tabla este plina si nu a castigat nimeni , rezulta egalitate
	printf("Egalitate intre jucatri\n");
	newgame = 1;
endif

endwhile






endfunction
