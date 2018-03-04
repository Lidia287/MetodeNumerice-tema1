function x = multiple_encode(str)

l = length(str);


x='';
for i=1:l


x = cstrcat(x,morse_encode(str(i))); %apelez functia implementata anterior 
x = cstrcat(x,' '); %adaug si spatii 


endfor



endfunction
