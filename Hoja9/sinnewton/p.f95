program pr

use mcf_tipos
use contorno
use rk4

real(kind=dp) :: x,h,w,v
real(kind=dp),dimension(4) :: y

x=1.0
y(1)=1.0
y(2)=0.0
y(3)=0.0
y(4)=1.0
h=0.0001

do
	call rk4_paso_dp(x,y,f,h)
	if (x>=2.0) then
		w=(2.0-y(1))/y(3)
		exit
	end if
end do

x=1.0
y(1)=1.0
y(2)=0.0
y(3)=0.0
y(4)=1.0
v=1.0
open(unit=100,file="dat.dat",status="old",action="write")

do
	write(unit=100,fmt=*) x, v
	call cont(x,y,f,h,w,v)
	if (x>=2.0) then
		exit
	end if
end do

close(100)

end program pr
