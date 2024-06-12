module funcion

use mcf_tipos

public :: f

contains

function f(x) result(f_result)
real(kind=sp),intent(in) :: x
real(kind=sp) :: f_result
f_result=(1.0-x**2)**(0.5)
end function f

end module funcion
