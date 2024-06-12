program p

use mcf_tipos
use rk4
use funcion

real(kind=dp) :: t
real(kind=dp),dimension(2) :: y
real(kind=dp) :: h
integer :: i

y(1)=50
y(2)=25
h=0.02
t=0

open(unit=100,file="dat.dat",status="old",action="write")

do i=1,1000
	
	write(unit=100,fmt=*) t, y(1), y(2)
	call rk4_paso_dp(t,y,f,h)
end do

close(100)

end program p 
