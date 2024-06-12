module bisection

use function
public :: bisect

contains

subroutine bisect(a,b,n,c)

real,intent(inout) :: a,b
real,intent(out) :: c
integer,intent(inout) :: n 
real :: p
integer :: i

do i=1,n
	c=(a+b)/2.0
	if (f(c)==0.0 .or. (abs(abs(a)-abs(b))/2.0)<=0.000001) then !probando el intentout en el programa
		print *, "patata"
		exit
	else if (f(c)*f(a)>0) then
		a=c
	else 
		b=c
	end if
	
end do

end subroutine bisect

end module bisection
