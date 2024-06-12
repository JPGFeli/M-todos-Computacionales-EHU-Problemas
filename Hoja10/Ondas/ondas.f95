program ondas

use mcf_tipos

real(kind=dp),dimension(0:20) :: u,v,u_old,u_new
real(kind=dp) :: x,time,h,coef,tau
integer :: i

open(unit=100,file="dat.dat",status="replace",action="write")
open(unit=101,file="dat2.dat",status="replace",action="write")

coef=1.0
x=0.0
tau=0.01
h=0.1
time=0.0
do i=0,10 !CONDICIONES INICIALES
	u(i)=x
	u(20-i)=x
	x=x+h
end do
v=0.0
x=0.0
u_old=u
do i=0,20
	x=i*h
	write(unit=100,fmt=*) time, x, u(i)
end do
write(unit=101,fmt=*) time, u(5)
!PRIMER CALCULO

do i=1,19
	u(i)=(1.0-coef)*u(i)+coef/2.0*(u(i+1)+u(i-1))+tau*v(i)
end do
time=tau
do i=1,20
	x=i*h
        write(unit=100,fmt=*) time, x, u(i)
end do
write(unit=101,fmt=*) time, u(5)

!AHORA EL RESTO DE ITERACIONES
time=tau
do
	time=time+tau
	do i=1,19
		u_new(i)=2*(1.0-coef)*u(i)+coef*(u(i+1)+u(i-1))-u_old(i)
	end do
	do i=0,20
		x=i*h
		write(unit=100,fmt=*) time, x, u_new(i)
	end do
	u_old=u
	u=u_new
	write(unit=101,fmt=*) time, u_new(5)
	if (time>=6) then
		exit
	end if
end do 
close(100)
close(101)
end program ondas
