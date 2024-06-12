module funcion

use mcf_tipos

real(kind=dp),public :: R,theta

public :: f
contains

function f(x) result(f_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: f_result

f_result=sqrt(2.0*9.80665/R*(sin(x)-sin(theta)))
f_result=1.0/f_result

end function

end module funcion
