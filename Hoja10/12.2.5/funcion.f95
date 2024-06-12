module funcion

use mcf_tipos

public :: f

contains

function f(t,u) result(f_result)

real(kind=dp),intent(in) :: t
real(kind=dp),dimension(0:),intent(in) :: u
real(kind=dp),dimension(0:50) :: f_result
integer :: i
real(kind=dp) :: h,pi

pi=acos(-1.0_dp)
h=pi/50.0_dp
do i=1,49
	f_result(i)=(u(i+1)-2.0_dp*u(i)+u(i-1))/h**2.0_dp
end do
f_result(0)=0.0_dp
f_result(50)=0.0_dp

end function f

end module funcion
