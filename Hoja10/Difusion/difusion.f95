program difusion

use mcf_tipos
use mcf_slineales

real(kind=dp) ::  h,tau,coef,time,x
real(kind=dp),dimension(100) :: diag,nodiag,rho_new,r
real(kind=dp),dimension(0:101) :: rho
integer :: i,n

open(unit=100,file="dat.dat",status="replace",action="write")
h=100.0/101.0
tau=1.0
coef=tau/h**2
diag=2.0*(1.0+coef)
nodiag=-coef
rho=0.0
rho(0)=100.0
n=100
time=0.0
do
	do i=1,n
		r(i)=2.0*(1.0-coef)*rho(i)+coef*(rho(i-1)+rho(i+1))
	end do
	r(1)=r(1)+coef*rho(0)
	r(n)=r(n)+coef*rho(n+1)
	call tridag(nodiag,diag,nodiag,r,rho_new,n)
	x=0.0
	rho(1:n)=rho_new(1:n)
	do i=0,n+1
		write(unit=100,fmt=*) time, x, rho(i) 
		x=x+h
	end do
	time=time+tau
	if (time>1000.0) then
		exit
	end if
end do
close(100)
end program difusion
