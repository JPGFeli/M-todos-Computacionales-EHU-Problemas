module funcion

use mcf_tipos

public :: f

contains 

function f(x,u) result(upunto)

real(kind=dp),intent(in) :: x
real(kind=dp),dimension(0:),intent(in) :: u
real(kind=dp),dimension(0:201) :: upunto
integer :: i
real(kind=dp) :: h

h=0.01
do i=0,100
	upunto(2*i)=upunto(2*i+1)
	upunto(2*i+1)=(u(2*i+2)-2.0_dp*u(2*i)+u(2*i-2))/h**2.0_dp
end do
upunto(1)=0.0_dp
upunto(201)=0.0_dp

end function f

end module funcion
