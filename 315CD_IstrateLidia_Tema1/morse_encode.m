function x = morse_encode(c)

mat = morse();
check = 0;
index = 1;

sir = '';
sir(1)=' ';
sir(2)=' ';
sir(3)=' ';
sir(4)=' ';

%pentru a ajunge la caracterul specificat , ma voi plimba pe cele 4 nivele 

for i=2:3 % iau indicii 2 si 3 pentru a trata cazurile in care merge la stanga(2) si la dreapta(3)
index=1;
%indicele i va lucra cu primul nivel



if check == 0

sir(1)=' ';
sir(2)=' ';
sir(3)=' ';
sir(4)=' ';
po = mat{i};
if i == 2
sir(1) = '.';
endif
if i == 3
sir(1) = '-';
endif
if po{1}==c
check = 1;
po{1};
sir;
endif

pa = po;
for j=2:3
%indicele j va lucra cu al doilea nivel
index=2;

if check == 0

sir(2)=' ';
sir(3)=' ';
sir(4)=' ';
if isempty(pa{j}) == 0
po = pa{j};
if j == 2
sir(index)='.';
endif
if j == 3
sir(index)='-';
endif
if po{1}==c
check = 1;
po{1};
sir;
endif

pb = po;
for k=2:3
%indicele k va lucra cu al treilea nivel
index=3;

if check == 0


sir(3)=' ';
sir(4)=' ';

if isempty(pb{k}) == 0
po = pb{k};
if k == 2
sir(index)='.';
endif
if k == 3
sir(index)='-';
endif
if po{1}==c
check = 1;
po{1};
sir;
endif

pc = po;
for m=2:3
%indicele m va lucra cu ultimul nivel
index=4;

if check == 0

sir(4)=' ';

if isempty(pc{m}) == 0
po = pc{m};

if m == 2
sir(index)='.';
endif
if m == 3
sir(index)='-';
endif
if po{1}==c
check = 1;
po{1};
sir;
endif


endif
endif
endfor

endif
endif
endfor


endif

endif
endfor



endif
endfor





x = sir;


endfunction
