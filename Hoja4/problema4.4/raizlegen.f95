program raiceslegendre

use raices
use legendre

real :: a,b,prec
integer :: i,n

print *, "Escriba el orden del polinomio del que se van a hallar las raices, prec"
read *, n,prec
a=-1.0
b=-0.9
i=0
do
	if (f(a,n)*f(b,n)>0) then
		a=b
		b=b+0.1
	else
		call bisect(a,b,prec,n)
		a=b
		b=b+0.1
		i=i+1
	end if
	if (i==n) then
		exit
	end if
end do
end program raiceslegendre