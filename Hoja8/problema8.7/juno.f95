program jcero

use mcf_tipos
use funcion
use rk4

real(kind=dp) :: x,h
real(kind=dp),dimension(2) :: y
integer :: i

h=0.0001
y(1)=0.0
y(2)=0.5
x=0.001

open(unit=100,file="juno.dat",status="old",action="write")

do i=1,180000
	write(unit=100,fmt=*) x, y(1), y(2)
	call rk4_paso_dp(x,y,f,h)
end do

close(100)

end program jcero


