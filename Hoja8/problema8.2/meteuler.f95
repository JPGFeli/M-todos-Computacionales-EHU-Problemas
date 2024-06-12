module ode

use funcion

public :: met_euler, rk2,rk4

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
do i=0,N-1
	w(i+1)=w(i)+h*f(t(i),w(i))
end do

end subroutine met_euler

subroutine rk2(f,a,b,c,h,t,w)

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
do i=0,N-1
        w(i+1)=w(i)+h*f(t(i)+h/2.0,w(i)+h/2.0*f(t(i),w(i)))
end do

end subroutine rk2

subroutine rk4(f,a,b,c,h,t,w)

real,intent(in) :: a,b,c,h
integer :: N,i
real :: k1,k2,k3,k4
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
do i=0,N-1
	k1=h*f(t(i),w(i))
	k2=h*f(t(i)+h/2.0,w(i)+k1/2.0)
	k3=h*f(t(i)+h/2.0,w(i)+k2/2.0)
	k4=h*f(t(i)+h,w(i)+k3)
        w(i+1)=w(i)+(k1+2.0*k2+2.0*k3+k4)/6.0
end do

end subroutine rk4


end module ode
