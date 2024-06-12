program p

use mcf_tipos

real(kind=dp),dimension(0:100,0:100) :: u,u_new,test
real(kind=dp) :: h
integer :: i,j,k

h=0.5_dp/100.0_dp
u=0.0_dp
do i=0,100
	u(100,i)=200.0_dp*i*h
	u(i,100)=200.0_dp*i*h
end do
u_new=u
do
	open(unit=1,file="dat.dat",status="replace",action="write",position="rewind")
	do i=1,99
		do j=1,99
			u_new(i,j)=0.25_dp*(u(i+1,j)+u(i-1,j)+u(i,j+1)+u(i,j-1))
			write(unit=1,fmt=*) i*h, j*h, u_new(i,j)
		end do
	end do
	test=abs(u_new-u)
	if (maxval(test)<0.1_dp) then
		close(1)
		exit
	end if
	u=u_new
	close(1)
end do

end program p

