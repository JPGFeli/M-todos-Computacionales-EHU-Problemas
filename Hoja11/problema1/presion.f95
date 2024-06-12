program presion

use mcf_tipos
use funcion


real(kind=dp) :: h,tau,x,time,coef
integer :: i,n
real(kind=dp),dimension(0:100) :: u,u_old,u_new
real(kind=dp),dimension(0:100,0:100) :: p
real(kind=dp),dimension(0:100) :: a

open(unit=100,file="dat.dat",status="replace",action="write")
h=0.01
tau=0.01
coef=(tau/h)**2
time=0.0
do i=1,99
	p(i,i)=1.0-coef
	p(i+1,i)=0.5*coef
	p(i,i+1)=0.5*coef
end do
p(0,0)=1.0
p(100,100)=1.0
p(1,0)=0.5*coef
p(100,99)=0.0
do i=0,100
	x=i*h
	u_old(i)=f(x)
	write(unit=100,fmt=*) time, x, u_old(i)
end do
u_new=u_old
u=u_old
time=0.01
do i=1,99
	x=i*h
	u(i)=f(x)*(1.0-coef)+coef*0.5*(f(x+h)+f(x-h))
	write(unit=100,fmt=*) time, x, u(i)
end do
a=u_old
a=matmul(p,a)
time=tau
do i=1,99
        p(i,i)=2.0*(1.0-coef)
        p(i+1,i)=coef
        p(i,i+1)=coef
end do
p(0,0)=1.0
p(100,100)=1.0
p(1,0)=coef
p(100,99)=0.0

do
	time=time+tau
	u_new=matmul(p,u)-u_old
	do i=0,100
		x=i*h
		write(unit=100,fmt=*) time, x, u_new(i)
	end do
	u_old=u
	u=u_new
	if (abs(time-0.5)<0.000001) then
		print *, "La amplitud en x=0.5, t=0.5 es ", u(50)
	end if
	if (abs(time-1.0)<0.000001) then
                print *, "La amplitud en x=0.5, t=1.0 es ", u(50)
	        exit
	end if
end do

end program presion
