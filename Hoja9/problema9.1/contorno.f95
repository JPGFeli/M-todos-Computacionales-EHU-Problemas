module funcion

use mcf_spline
use mcf_tipos
use rk4

public :: f,g

contains
!FUNCION PARA DERIVADAS
function f(x,y) result(f_result)

real(kind=dp),intent(in) :: x
real(kind=dp),dimension(:),intent(in) :: y
real(kind=dp),dimension(size(y)) :: f_result

f_result(1)=y(2)
f_result(2)=0.5*sqrt(1+(y(2))**2)
f_result(3)=y(4)
f_result(4)=0.5*y(4)/sqrt(1+(y(4))**2)

end function f

!FUNCION PARA INTERPOLAR Y CALCULAR LA CURVA DE LA FUNCION
function g(xint,x,y) result(f_result)

real(kind=dp),intent(in) :: xint
real(kind=dp) :: a,f_result
real(kind=dp),dimension(:),intent(in) :: x,y
real(kind=dp),dimension(50000) :: y2
integer :: n

n=50000

call spline(x,y,n,y2)
call splint(x,y,y2,n,xint,a)
f_result=sqrt(1.0+a**2)

end function g


end module funcion
