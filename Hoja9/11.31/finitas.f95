program par

use mcf_tipos
use funcion
use mcf_slineales

real(kind=dp) :: x,h
real(kind=dp),dimension(999) :: a,b,c,d,xr
integer :: i,n

n=999
x=0.0
h=0.001
do i=1,999
	x=x+h
	a(i)=-1.0-h*p(x)/2.0
	d(i)=2.0+q(x)*h**2
	c(i)=-1.0+p(x)*h/2.0
	b(i)=-r(x)*h**2
end do
b(1)=b(1)+0.0*(1.0+h*p(0.001_dp)/2.0)
b(999)=b(999)+(1.0-h*p(1.999_dp)/2.0)*2.0

call tridag(a,d,c,b,xr,n)
open(unit=100,file="dat.dat",status="replace",action="write")
x=0.0
write(unit=100,fmt=*) x, 0.0
do i=1,999
	x=x+h
	write(unit=100,fmt=*) x, xr(i)
end do
write(unit=100,fmt=*) x+h, 2.0 
close(100)
end program par
