program laplace

use mcf_tipos

real(kind=dp) :: x,y,h
real(kind=dp),dimension(0:9,0:19) :: u,u_old,test
integer :: i,j,nx,ny
u=0.0
u(0,:)=60.0
u(9,:)=60.0
u(:,0)=50.0
u(:,19)=70.0
open(unit=100,file="dat.dat",status="replace",action="write")
x=0.0
y=0.0
nx=9
ny=19
h=0.1
do 
	u_old=u
	do i=1,nx
		x=x+h
		do j=1,ny
			y=y+h
			u(i,j)=(u_old(i+1,j)+u_old(i-1,j)+u_old(i,j+1)+u_old(i,j-1))*0.25
			write(unit=100,fmt=*) x, y, u(i,j)
		end do
		y=0.0
	end do
	test=abs(u-u_old)
	if (maxval(test)<0.1) then
		exit
	end if 
end do
close(100)
end program laplace
