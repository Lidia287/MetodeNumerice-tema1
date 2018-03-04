function Z = zigzag(n)

Z = zeros(n,n);
 i = 1;
 j = 1;


Z(1,1)=0;
ok = 0;

%tratez cazul in care ordinul matricei este impar
if rem(n,2) == 1
%pun elementele aflate in triunghiul inferior
while  ok < (n*n-n)/2-1

	if i == 1
		i = i;
		j = j+1;
		ok++;  
  		Z(i,j)=ok;
		while j > 1
			i = i+1;
			j=j-1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif

	if j == 1
		i = i+1;
		j = j;
		ok++;  
  		Z(i,j)=ok;
		while i > 1
			i = i-1;
			j=j+1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif

endwhile

%pun elementele aflate in triunghiul superior

while ok <=n*n-2

	if i == n && ok != n*n-1
		i = i;
		j = j+1;
		ok++;  
 		Z(i,j)=ok;
		while j < n
			i = i-1;
			j=j+1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif

	if j == n && ok!=n*n-1
		i = i+1;
		j = j;
		ok++;  
 		Z(i,j)=ok;
		while i < n
			i = i+1;
			j=j-1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif


endwhile
endif

%tratez cazul in care ordinul matricei este par
if rem(n,2) == 0
%pun elementele aflate in triunghiul inferior
while  ok < (n*n-n)/2-1

	if i == 1
		i = i;
		j = j+1;
		ok++;  
  		Z(i,j)=ok;
		while j > 1
			i = i+1;
			j=j-1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif

	if j == 1
		i = i+1;
		j = j;
		ok++;  
  		Z(i,j)=ok;
		while i > 1
			i = i-1;
			j=j+1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif
endwhile

		if i == 1  # diagonala 
		i = i;
		j = j+1;
		ok++;  
  		Z(i,j)=ok;
		while j > 1
			i = i+1;
			j=j-1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif
%pun elementele aflate in triunghiul superior
 while ok <=n*n-2

	if i == n && ok != n*n-1
		i = i;
		j = j+1;
		ok++;  
 		Z(i,j)=ok;
		while j < n
			i = i-1;
			j=j+1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif

	if j == n && ok!=n*n-1
		i = i+1;
		j = j;
		ok++;  
 		Z(i,j)=ok;
		while i < n
			i = i+1;
			j=j-1;
			ok++;
			Z(i,j)=ok;
		endwhile
	endif


endwhile



endif





endfunction


  
