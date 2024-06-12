program lorenz

use mcf_tipos
use funcion
use rk4

real(kind=dp),dimension(3) :: y
real(kind=dp) :: t,h
integer :: i

open(unit=100,file="dat.dat",status="old",action="write")

y(1)=-1.0
y(2)=5.0
y(3)=3.0
h=0.01
t=0.0
do i=1,10000000
	write(unit=100,fmt=*) y(1), y(2), y(3), t
	call rk4_paso_dp(t,y,f,h)
end do

close(100)

end program lorenz
