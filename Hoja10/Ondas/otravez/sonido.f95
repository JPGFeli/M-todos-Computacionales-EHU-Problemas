program p

use mcf_tipos

real(kind=dp) :: h,tau,r,time,pi
real(kind=dp),dimension(0:100) :: u_old,u,u_new
integer :: i

tau=0.01_dp
h=1.0_dp/100.0_dp
r=tau**2.0_dp/h**2.0_dp
pi=acos(-1.0_dp)
open(unit=100,file="dat.dat",status="replace",action="write")
open(unit=101,file="dat1.dat",status="replace",action="write")

do i=0,100
	u_old(i)=0.9_dp*cos(2.0_dp*pi*i*h)
	write(unit=100,fmt=*) i*h, u_old(i)
end do
u=u_old
u_new=u_old
do i=1,99
	u(i)=r*(u_old(i+1)-2.0_dp*u_old(i)+u_old(i-1))/2.0_dp+u_old(i)
end do
u(100)=u(99)
time=tau
do
	time=time+tau
	do i=1,99
		u_new(i)=r*(u(i+1)-2.0_dp*u(i)+u(i-1))+2.0_dp*u(i)-u_old(i)
	end do
	u_new(100)=u_new(99)
	u_old=u
	u=u_new
	if (abs(time-0.5_dp)<0.00001) then
		print *, "La amplitud en x=0.5, t=0.5 es ", u_new(50)
		do i=0,100
			write(unit=101,fmt=*) i*h, u_new(i)
		end do
	else if (abs(time-1.0_dp)<0.00001) then
		print *, "La amplitud en x=0.5, t=1.0 es ", u_new(50)
		exit
	end if
end do

close(100)
close(101)

end program p
