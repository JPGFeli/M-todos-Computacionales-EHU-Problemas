module function

public :: f,fp

contains

function f(x) result(f_result)
real,intent(in) :: x
real :: f_result,pi
pi=acos(-1.0)
f_result= log((x**2+1)*exp(0.4*x*cos(pi*x)))
end function f

function fp(x) result(f_result)
real,intent(in) :: x
real :: f_result,pi
pi=acos(-1.0)
f_result=(2*x+(x**2+1)*(0.4*cos(pi*x)-0.4*pi*x*sin(pi*x)))/(x**2+1)
end function fp

end module function