module cuadratura

public :: c

contains

function c(x) result(c_result)

real,intent(in) :: x
real :: c_result

c_result=exp((-x**2.0)/2.0)

end function c

end module cuadratura
