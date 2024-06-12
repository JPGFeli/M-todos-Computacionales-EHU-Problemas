module euler

use funcion
use mcf_spline

public :: met_euler

contains

subroutine met_euler(f,a,b,c,h,t,w)

real,intent(in) :: a,b,c,h
integer :: N,i
real,dimension(:),intent(out) :: t,w
interface
function f(x,y) result(yprima)
    real, intent(in) :: x,y
    real  :: yprima
   end function f
end interface

N=int((b-a)/h)
w(0)=c
do i=0,N
	t(i)=a+i*h
end do
do i=0,N
	w(i+1)=w(i)+h*f(t(i),w(i))
end do

end subroutine met_euler

end module euler
