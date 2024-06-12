module bisection

use function
public :: bisect

contains

subroutine bisect(a,b,n,prec)

real,intent(inout) :: a,b,prec
real :: c
integer,intent(inout) :: n 
integer :: i

do i=1,n
	c=(a+b)/2.0
	if (f(c)==0.0 .or. ((abs(a)+abs(b))/2.0)<=prec) then
		print *, "La raiz es", c
		stop
	else if (f(c)<0) then
		a=c
	else if (f(c)>0) then
		b=c
	end if
	if (i==n) then
		print *, "Número máximo de iteraciones alcanzado"
	end if
	
end do

end subroutine bisect

end module bisection
