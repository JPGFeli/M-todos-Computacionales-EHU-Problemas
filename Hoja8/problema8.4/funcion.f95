module funcion

use mcf_tipos

public :: f

contains

function f(t,y) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=9.8*cos(y(1))/1.0

end function f

end module funcion
