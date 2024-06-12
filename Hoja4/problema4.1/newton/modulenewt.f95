module newton

use function
public :: newt

contains

subroutine newt (x,precision)
real,intent(inout) :: x,precision
real :: p
do
	p=x-f(x)/fp(x)
	if (abs(x-p)<=(precision)) then
		exit
	else
		x=p
	end if
	
end do
print *, "La raiz aproximada de la función es", p
end subroutine newt

end module newton