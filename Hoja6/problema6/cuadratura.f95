module cuadratura

public :: f2

contains

function f2(x) result(c_result)

real,intent(in) :: x
real :: c_result

c_result=exp((-x**2.0)/2.0)

end function f2

end module cuadratura
