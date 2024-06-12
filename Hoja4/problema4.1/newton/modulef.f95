module function

real,public :: r
public :: f,fp

contains

function f(x) result(f_result)
real,intent(in) :: x
real :: f_result
f_result= x**2-r
end function f

function fp(x) result(f_result)
real,intent(in) :: x
real :: f_result
f_result= 2*x
end function fp

end module function