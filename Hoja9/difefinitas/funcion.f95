module funcion

use mcf_tipos

public :: p,q,r

contains

function p(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=-2.0/x

end function p

function q(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=2.0/x**2

end function q

function r(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=sin(log(x))/x**2

end function r

end module funcion
