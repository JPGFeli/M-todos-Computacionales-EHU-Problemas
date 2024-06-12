module funcion

use mcf_tipos

public :: f

contains

function f(t,y) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=48.0*cos(5.0*t)-1.0*y(1)

end function f

end module funcion
