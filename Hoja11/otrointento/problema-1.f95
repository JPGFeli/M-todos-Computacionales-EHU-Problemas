program ondas

use mcf_tipos

real(kind=dp),dimension(0:100) :: u,u_old,u_new
real(kind=dp) :: x,time,h,tau,pi
integer :: i

h=0.01
tau=0.01
open(unit=100,file="dat.dat",status="replace",action="write")
pi=acos(-1.0_dp)
do i=0,100	
	x=i*h
	u_old(i)=0.9_dp*cos(2_dp*pi*x)
	write(unit=100,fmt=*) 0.0, x, u_old(i)
end do
u=u_old
do i=1,99
	x=i*h
	u(i)=0.5_dp*(u_old(i+1)-2_dp*u_old(i)+u_old(i-1))+u_old(i)
end do
u(0)=u(1)
do i=0,100
	x=i*h
	write(unit=100,fmt=*) 0.01, x, u(i)
end do	
u_new=u_old
time=0.01_dp
do
	time=0.01_dp+time
	do i=1,99
		x=i*h
		u_new(i)=u(i+1)+u(i-1)-u_old(i)
	end do
	u_new(0)=u_new(1)
	do i=0,100
		x=i*h
		write(unit=100,fmt=*) time, x, u_new(i)
	end do
	if (abs(time-0.5_dp)<=0.001_dp) then
		print *, "La amplitud en x=0.5, t=0.5 es ", u_new(50)
	end if
	if (abs(time-1.0_dp)<=0.001_dp) then
		print *, "La amplitud en x=0.5, t=1.0 es ", u_new(50)
		exit
	end if
	u_old=u
	u=u_new
end do

end program ondas
