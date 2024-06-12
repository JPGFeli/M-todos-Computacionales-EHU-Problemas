module contorno

use mcf_tipos
use rk4

public :: f,cont

contains

function f(x,y) result(f_result)

real(kind=dp),intent(in) :: x
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=-2.0*y(2)/x+2.0*y(1)/x**2.0+sin(log(x))/x**2.0
f_result(3)=y(4)
f_result(4)=-2.0*y(4)/x+2.0*y(3)/x**2.0

end function f

subroutine cont(x,y,f,h,w,v)

real(kind=dp), intent(inout)                :: x
real(kind=dp), dimension(:), intent(inout)  :: y
real(kind=dp), intent(in)                   :: h,w
real(kind=dp), intent(out)                   :: v
interface
   function f(x,y) result(yprima)
    use mcf_tipos
    real(kind=dp), intent(in)               :: x
    real(kind=dp), dimension(:), intent(in) :: y
    real(kind=dp), dimension(size(y))       :: yprima
   end function f
end interface

v=y(1)+w*y(3)
call rk4_paso_dp(x,y,f,h)
end subroutine cont

end module contorno
