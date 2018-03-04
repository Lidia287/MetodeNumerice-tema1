function  x = morse_decode(sir)

l = length(sir);
i = 1;
check = 0;
mat = morse();
po = mat{2};
% ma folosesc de pointerul po pentru a traversa arborele
	if sir(1) == '.'
	po = mat{2};
	endif
	
	if sir(1) == '-'
	po = mat{3};
	endif

for i=2:l

	if sir(i) == '.'
	if isempty(po{2}) == 1 % functia isempty verifica daca se intra pe o ramura goala
	check = 1;
	endif
	if isempty(po{2}) == 0 % daca nu se intra pe o ramura goala, continuam procesul
	po = po{2};
	endif
	endif
	
	if sir(i) == '-'
	if isempty(po{3}) == 1
	check = 1;
	endif
	if isempty(po{3}) == 0
	po = po{3};
	endif
	endif

endfor

if check == 0
	x = po{1}; % gasire valoarea literei
endif

if check == 1
	x = '*'; %conditie pentru cazul in care nu a fost gasit un element 
endif


endfunction
