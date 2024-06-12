program p

use mcf_tipos
use contorno
use rk4

real(kind=dp) :: x,h,alpha
real(kind=dp),dimension(4) :: u
integer :: i

alpha=3.0
h=0.0001

newton: do
x=1.0
u(1)=1.0
u(2)=alpha
u(3)=0.0
u(4)=1.0
open(unit=100,file="dat.dat",status="replace",action="write",position="rewind")
write(unit=100,fmt=*) x, u(1)
do
	call rk4_paso_dp(x,u,f,h)	
	write(unit=100,fmt=*) x, u(1)
	if (x>=2.0) then
		exit
	end if
end do
if ((abs(u(1)-2.0))<0.001) then
	close(100)
	exit newton
else
	alpha=alpha-(u(1)-2.0)/u(3)
end if
close(100)
end do newton

end program p
