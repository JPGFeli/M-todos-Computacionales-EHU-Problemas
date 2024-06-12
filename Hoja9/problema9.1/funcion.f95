module funcion

use mcf_spline

public :: f

contains

function f(xint,x,y) result(f_result)

real,intent(in) :: xint
real :: f_result
real,dimension(:),intent(in) :: x,y
real,dimension(50000) :: y2 
integer :: n

n=50000

call spline(x,y,n,y2)
call splint(x,y,y2,n,xint,f_result)


end function f

end module funcion
