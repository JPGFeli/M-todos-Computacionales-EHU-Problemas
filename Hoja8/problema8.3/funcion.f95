module funcion

use mcf_tipos

public :: f

contains 

function f(t,y) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension (:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=(1.0-10**(-5.0)*y(1)-0.1*y(2))*y(1)
f_result(2)=(-1.0+0.1*y(1))*y(2)

end function f

end module funcion
