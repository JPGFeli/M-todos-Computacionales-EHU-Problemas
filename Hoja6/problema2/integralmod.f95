module integral

use funcion

public :: simpson,trapecio

contains

subroutine simpson(a,b,m)
real,intent(in) :: a,b
integer,intent(in) :: m
real :: i0,i1,i2,i,x,h
integer :: j

h=(b-a)/m
i0=f(a)+f(b)
i1=0
i2=0
do j=1,m-1
	x=a+j*h
	if (((j/2)*2-j)==0) then
		i2=i2+f(x)
	else
		i1=i1+f(x)
	end if
end do
i=h*(i0+2.0*i2+4.0*i1)/3.0
print *, i
end subroutine simpson

subroutine trapecio(a,b,m)
real,intent(in) :: a,b
integer,intent(in) :: m
real :: i0,i1,i,x,h
integer :: j

h=(b-a)/m
i0=f(a)+f(b)
i1=0
do j=1,m-1
	x=a+j*h
	i1=i1+f(x)
end do
i=h*(i0+2*i1)/2.0
print *, i
end subroutine trapecio

end module integral
