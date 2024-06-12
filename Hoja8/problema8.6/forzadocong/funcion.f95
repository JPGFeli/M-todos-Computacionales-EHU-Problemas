module funcion

use mcf_tipos

public :: f

contains

function f(t,y) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=0.7*cos((10.0/5.0)*t)-0.40*y(2)-10.0*y(1)

end function f

end module funcion
