program p

use mcf_tipos
use rk4
use funcion 

real(kind=dp),dimension(0:50) :: u
real(kind=dp) :: h,time,tau,pi,t
integer :: i

open(unit=100,file="dat.dat",status="replace",action="write")
pi=acos(-1.0_dp)
h=pi/50.0_dp
do i=0,50
	u(i)=sin(i*h)
end do
tau=0.001_dp
t=0.0_dp
do
	call rk4_paso_dp(t,u,f,tau)
	if (t>=0.5_dp) then
		do i=0,50
			write(unit=100,fmt=*) i*h, u(i)
		end do
		exit
	end if
end do

end program p
