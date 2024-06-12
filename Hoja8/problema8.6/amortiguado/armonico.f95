program armonico

use mcf_tipos
use funcion
use rk4

real(kind=dp) :: t,h
real(kind=dp),dimension(2) :: y
integer :: i

open(unit=100,file="armonico.dat",status="new",action="write")

y(1)=2.0
y(2)=0.0
t=0.0
h=0.001
do i=1,5000
	write(unit=100,fmt=*) t, y(1), y(2)
	call rk4_paso_dp(t,y,f,h)
end do
close(100)

end program armonico
