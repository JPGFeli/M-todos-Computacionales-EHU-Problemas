module function

real,public :: r
public :: f

contains

function f(x) result(f_result)
real,intent(in) :: x
real :: f_result
f_result= x**2-r
end function f

end module function