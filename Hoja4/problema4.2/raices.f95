program raices

use function
use bisection

real :: a,b,raiz,m,n
integer :: i,int

a=-14.0
m=-14.0
b=-13.0
n=-13.0
int=10000
do i=1,5
if (i<6) then
	call bisect(a,b,int,raiz)
	print *, raiz
	m=m-1
	n=n-1
	a=m
	b=n
end if
end do
end program raices