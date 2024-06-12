module funcion

use mcf_tipos

public :: p,q,r

contains

function p(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=0.0

end function p

function q(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=4.0

end function q

function r(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=-4.0*x

end function r

end module funcion
