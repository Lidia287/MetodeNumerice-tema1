function x = multiple_decode(sir)

l = length(sir);

i = 1;
check = 0;
nr = 1;
cevvva = 0;

x='';

while i <= l %proces incheiat la atingerea lungimii sirului

	if sir(i) == ' ' 
		k=1;
		for j = nr:i-1
			ceva(k) = sir(j);
			k++;
		endfor
		nr = i+1;
		i++;
		cevvva=1;
	endif

	if cevvva == 1
 	y = morse_decode(ceva); %apelez functia implementata anterior

	
		x = strcat(x,y); %concatenez rezultatele
		ceva='';
	
	cevvva=0;
	endif

	if sir(i) != ' ' && i!=l
		i++;
	endif
		
	if i == l
		k=1;
		for j = nr:i
			ceva(k) = sir(j);
			k++;
		endfor
		cevvva=1;
		i++;
	endif



	if cevvva == 1
 	y = morse_decode(ceva);

	
		x = strcat(x,y);
	
		ceva='';
	
	cevvva=0;
	endif



endwhile













endfunction
