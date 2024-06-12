module newton

use function
public :: newt

contains

subroutine newt (x)
real,intent(inout) :: x
real :: p
do
	p=x-f(x)/fp(x)
	if (abs(x-p)<=(0.0001)) then
		exit
	else
		x=p
	end if
	
end do
print *, "La raiz de la función es", p
end subroutine newt

end module newton