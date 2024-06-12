program p

use mcf_tipos
use funcion
use rk4
use gauss_legendre

real(kind=dp) :: x,h,alpha,a,b,int
real(kind=dp),dimension(4) :: u
integer :: i,n
real(kind=dp),dimension(50000) :: xa,ya

alpha=3.0
h=0.0001

newton: do
i=2
x=0.0
u(1)=2.0
u(2)=alpha
u(3)=0.0
u(4)=1.0
open(unit=100,file="dat.dat",status="replace",action="write",position="rewind")
write(unit=100,fmt=*) x, u
xa(1)=x
ya(1)=u(2)
do
	call rk4_paso_dp(x,u,f,h)	
	write(unit=100,fmt=*) x, u
	xa(i)=x
	ya(i)=u(2)
	i=i+1
	if (x>=5.0) then
		exit
	end if
end do
if ((abs(u(1)-3.0))<0.001) then
	close(100)
	exit newton
else
	alpha=alpha-(u(1)-3.0)/u(3)
end if
close(100)
end do newton
a=0.0
b=5.0
n=55
call qgauss(g,a,b,int,xa,ya,n)
print *, int
end program p
