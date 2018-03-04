function m = morse()

% ultimul nivel

h={'H' {} {}};
v={'V' {} {}};
f={'F' {} {}};
l={'L' {} {}};
p={'P' {} {}};
j={'J' {} {}};
b={'B' {} {}};
x={'X' {} {}};
c={'C' {} {}};
y={'Y' {} {}};
z={'Z' {} {}};
q={'Q' {} {}};

%penultimul nivel

s={'S' h v};
u={'U' f {}};
r={'R' l {}};
w={'W' p j};
d={'D' b x};
k={'K' c y};
g={'G' z q};
o={'O' {} {}};

%antepenultimul nivel

i={'I' s u};
a={'A' r w};
n={'N' d k};
m={'M' g o};

%al doilea nivel

e={'E' i a};
t={'T' n m};

%nivelul mama

M = {'' e t};
m = M;

%codul morse

endfunction
