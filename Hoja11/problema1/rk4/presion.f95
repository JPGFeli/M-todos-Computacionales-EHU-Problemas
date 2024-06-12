program p

use mcf_tipos
use rk4
use funcion

real(kind=dp) :: time,tau,h,pi,x,t
real(kind=dp),dimension(0:201) :: u
integer :: i

open(unit=100,file="dat.dat",status="replace",action="write")
pi=acos(-1.0_dp)
h=0.01_dp
u=0.0_dp
x=-0.01
tau=0.01
do i=0,200,2
	x=x+h
	u(i)=0.9_dp*cos(2.0_dp*pi*x)
u(0)=0.9_dp
u(200)=0.9_dp
end do
t=0.0
x=-0.01_dp
do 
	call rk4_paso_dp(t,u,f,tau)
	if (t>=0.05_dp) then
		do i=0,200,2
			x=x+h
			write(unit=100,fmt=*) x, u(i)
		end do
		exit
	end if
end do
close(100)
end program p
