module funcion

public :: f1,f2,f3

contains

function f1(x) result(f_result1)

real,intent(in) :: x
real :: f_result1
f_result1=(x**2.0)*log(x)

end function f1

function f2(x) result(f_result2)

real,intent(in) :: x
real :: f_result2
f_result2=(x**2.0)*exp(-x)

end function f2

function f3(x) result(f_result3)

real,intent(in) :: x
real :: f_result3
f_result3=2/(x**2-4)

end function f3

end module funcion
