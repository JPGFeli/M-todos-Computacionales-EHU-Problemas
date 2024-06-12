module newton

use funcion
public :: newt

contains

subroutine newt (x)
real,intent(inout) :: x
real :: prec
real :: p

prec=0.000001
do
	p=x-f(x)/derv(x)
	if (abs(x-p)<=(prec)) then
		exit
	else
		x=p
	end if	
end do
print *, "La raiz aproximada de la función es", p
end subroutine newt

end module newton
