module raices
use legendre

public :: bisect

contains


subroutine bisect(a,b,prec,t)

real,intent(inout) :: a,b,prec
real :: c
integer,intent(inout) :: t
real :: p
integer :: i

do i=1,100000
	c=(a+b)/2.0
	if (f(c,t)==0.0 .or. (abs(abs(a)-abs(b))/2.0)<=prec) then !probando el intentout en el programa
		print *, c
		exit
	else if (f(c,t)*f(a,t)>0) then
		a=c
	else 
		b=c
	end if
	
end do

end subroutine bisect



end module raices