program par

use mcf_tipos
use funcion
use mcf_slineales

real(kind=dp) :: x,h
real(kind=dp),dimension(1000) :: a,b,c,d,xr
integer :: i,n

n=1000
x=1.0
h=0.001
do i=1,1000
	x=x+i*h
	a(i)=-1.0-h*p(x)/2.0
	d(i)=2.0+q(x)*h**2
	c(i)=-1.0+p(x)*h/2.0
	b(i)=-r(x)*h**2
end do
b(1)=b(1)+1.0*(1.0+h*p(1.0_dp)/2.0)
b(1000)=b(1000)+(1.0-h*p(2.0_dp)/2.0)*2.0

call tridag(a,d,c,b,xr,n)
open(unit=100,file="dat.dat",status="replace",action="write")
x=1.0
do i=1,1000
	write(unit=100,fmt=*) x, xr(i)
	x=x+h
end do
close(100)
end program par
