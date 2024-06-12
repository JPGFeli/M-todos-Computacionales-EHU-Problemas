module funcion

use mcf_tipos

public :: f

contains

function f(x,y) result(f_result)

real(kind=dp),intent(in) :: x
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=(-1.0/x)*y(2)-y(1)
f_result(2)=f_result(2)+(y(1)/x**2)

end function f

end module funcion
