function r = baza(sursa,b1,b2)

numar=0;
expo=0;

if b1 <= 9 %testez cazul in care baza 1 este mai mica sau egala cu 9 si aflu numarul in baza 10
surrsa=str2num(sursa);

	while surrsa != 0
		numar = numar + rem(surrsa,10)*b1^expo;
		expo = expo + 1;
		surrsa = fix(surrsa/10);			

	endwhile
endif

if b1 >= 11      % testez cazul in care baza este mai mare sau egala cu baza 11 si aflu numarul in baza 10
l = length(sursa);

for i = l:-1:1

if sursa(i) == "0" 
	x = 0;
endif

if sursa(i) == "1" 
	x = 1;
endif


if sursa(i) == "2" 
	x = 2;
endif
	

if sursa(i) == "3" 
	x = 3;
endif

if sursa(i) == "4" 
	x = 4;
endif

if sursa(i) == "5" 
	x = 5;
endif


if sursa(i) == "6" 
	x = 6;
endif


if sursa(i) == "7" 
	x = 7;
endif


if sursa(i) == "8" 
	x = 8;
endif


if sursa(i) == "9" 
	x = 9;
endif

if sursa(i) == "A" || sursa(i) == "a" 
	x = 10;
endif

if sursa(i) == "B" || sursa(i) == "b" 
	x = 11;
endif

if sursa(i) == "C" || sursa(i) == "c" 
	x = 12;
endif

if sursa(i) == "D" || sursa(i) == "d" 
	x = 13;
endif

if sursa(i) == "E" || sursa(i) == "e" 
	x = 14;
endif

if sursa(i) == "F" || sursa(i) == "f" 
	x = 15;
endif

if sursa(i) == "G" || sursa(i) == "g" 
	x = 16;
endif

if sursa(i) == "H" || sursa(i) == "h" 
	x = 17;
endif

if sursa(i) == "I" || sursa(i) == "i" 
	x = 18;
endif

if sursa(i) == "J" || sursa(i) == "j" 
	x = 19;
endif

if sursa(i) == "K" || sursa(i) == "k" 
	x = 20;
endif

if sursa(i) == "L" || sursa(i) == "l" 
	x = 21;
endif

if sursa(i) == "M" || sursa(i) == "m" 
	x = 22;
endif

if sursa(i) == "N" || sursa(i) == "n" 
	x = 23;
endif

if sursa(i) == "O" || sursa(i) == "o" 
	x = 24;
endif

if sursa(i) == "P" || sursa(i) == "p" 
	x = 25;
endif

if sursa(i) == "Q" || sursa(i) == "q" 
	x = 26;
endif

if sursa(i) == "R" || sursa(i) == "r" 
	x = 27;
endif

if sursa(i) == "S" || sursa(i) == "s" 
	x = 28;
endif

if sursa(i) == "T" || sursa(i) == "t" 
	x = 29;
endif

if sursa(i) == "U" || sursa(i) == "u" 
	x = 30;
endif

numar = numar + x*b1^expo;
expo = expo + 1;

endfor

endif

if b1 == 10 %daca numarul este deja in baza 10
	numar = str2num(sursa);
endif

numarr = numar;
nrrest = 0;
	%voi crea un vector in care pun resturile pentru a afisa numarul in noua baza
	% aflu numarul elementelor vectorului 
	while numarr != 0 
		cat = fix(numarr/b2);
		rest = numar - cat*b2;
		nrrest = nrrest + 1;
		numarr = cat;
	endwhile

nrrest;
v = zeros(nrrest);
index = 1;
	while numar != 0 
		cat = fix(numar/b2);
		rest = numar - cat*b2;
		rest;
		v(index)=rest;
		index = index + 1;
		numar = cat;
	endwhile





next = v(nrrest,1);

if next == 0 
	r = "0";
endif

if next == 1 
	r = "1";
endif


if next == 2 
	r = "2";
endif
	

if next == 3 
	r = "3";
endif

if next == 4 
	r = "4";
endif

if next == 5 
	r = "5";
endif


if next == 6 
	r = "6";
endif


if next == 7 
	r = "7";
endif


if next == 8 
	r = "8";
endif


if next == 9 
	r = "9";
endif

if next == 10 
	r = "a";
endif

if next == 11 
	r = "b";
endif


if next == 12 
	r = "c";
endif


if next == 13 
	r = "d";
endif


if next == 14 
	r = "e";
endif


if next == 15 
	r = "f";
endif


if next == 16 
	r = "g";
endif


if next == 17 
	r = "h";
endif

if next == 18 
	r = "i";
endif


if next == 19 
	r = "j";
endif


if next == 20 
	r = "k";
endif

if next == 21 
	r = "l";
endif


if next == 22 
	r = "m";
endif

if next == 23 
	r = "n";
endif

if next == 24 
	r = "o";
endif

if next == 25 
	r = "p";
endif

if next == 26 
	r = "q";
endif

if next == 27 
	r = "r";
endif

if next == 28 
	r = "s";
endif

if next == 29 
	r = "t";
endif


if next == 30 
	r = "u";
endif
     

r;

%testez toate cazurile , pentru a converti literele in numere
for i = nrrest-1:-1:1
	

	next = v(i,1);

if next == 0 
	r = strcat(r,"0");
endif

if next == 1 
	r = strcat(r,"1");
endif


if next == 2 
	r = strcat(r,"2");
endif
	

if next == 3 
	r = strcat(r,"3");
endif

if next == 4 
	r = strcat(r,"4");
endif

if next == 5 
	r = strcat(r,"5");
endif


if next == 6 
	r = strcat(r,"6");
endif


if next == 7 
	r = strcat(r,"7");
endif


if next == 8 
	r = strcat(r,"8");
endif


if next == 9 
	r = strcat(r,"9");
endif

if next == 10 
	r = strcat(r,"a");
endif

if next == 11 
	r = strcat(r,"b");
endif


if next == 12 
	r = strcat(r,"c");
endif


if next == 13 
	r = strcat(r,"d");
endif


if next == 14 
	r = strcat(r,"e");
endif


if next == 15 
	r = strcat(r,"f");
endif


if next == 16 
	r = strcat(r,"g");
endif


if next == 17 
	r = strcat(r,"h");
endif

if next == 18 
	r = strcat(r,"i");
endif


if next == 19 
	r = strcat(r,"j");
endif


if next == 20 
	r = strcat(r,"k");
endif

if next == 21 
	r = strcat(r,"l");
endif


if next == 22 
	r = strcat(r,"m");
endif

if next == 23 
	r = strcat(r,"n");
endif

if next == 24 
	r = strcat(r,"o");
endif

if next == 25 
	r = strcat(r,"p");
endif

if next == 26 
	r = strcat(r,"q");
endif

if next == 27 
	r = strcat(r,"r");
endif

if next == 28 
	r = strcat(r,"s");
endif

if next == 29 
	r = strcat(r,"t");
endif


if next == 30 
	r = strcat(r,"u");
endif	


	
endfor



endfunction
