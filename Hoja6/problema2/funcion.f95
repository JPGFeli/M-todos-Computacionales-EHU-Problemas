module funcion

public :: f

contains

function f(x) result(f_result)

real,intent(in) :: x
real :: f_result

f_result=(1-x**2)**(0.5)

end function f

end module funcion
