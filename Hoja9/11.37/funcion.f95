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

p_result=1000.0/(625.0*3.0*10**7.0)

end function q

function r(x) result(p_result)

real(kind=dp),intent(in) :: x
real(kind=dp) :: p_result

p_result=(100.0/12.0)*x*(x-120.0)/(2.0*3.0*625.0*10**7.0)

end function r

end module funcion
