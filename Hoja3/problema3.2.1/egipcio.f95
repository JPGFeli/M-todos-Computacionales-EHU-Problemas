program egipcio

integer :: a,b,n,sum,colum,c,d

print *, "Escriba el  primer número entero a multiplicar"
read *, a
print *, "Escriba el  segundo número entero a multiplicar"
read *, b
n=0
c=a
d=b
a=abs(a)
b=abs(b)
do !Hallamos n tal que 2^n sea menor o igual a a
	if (2**n<=a) then
		n=n+1
	else
		n=n-1
		exit
	end if
end do

sum=0
colum=0
do !Hallamos los exponentes de n tq su suma de a y de paso aplicamos el método egipcio
	if ((sum+2**n)<=a) then
		sum=sum+(2**n)
		colum=colum+b*(2**n)
		n=n-1
	else 
		n=n-1
	end if
	if (sum==a) then
		exit
	end if
end do 
if (c*d>0) then
	print *, "El resultado de la multiplicación es ", colum
else
	print *, "El resultado de la multiplicación es ", -colum
end if

end program egipcio




