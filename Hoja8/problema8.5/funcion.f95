module funcion

use mcf_tipos

public :: f

contains

function f(t,y) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=10.0*(y(2)-y(1))
f_result(2)=y(1)*(28.0-y(3))-y(2)
f_result(3)=y(2)*y(3)-8.0*y(3)

end function f

end module funcion


