module raices
use function

public :: regula,bisect,newt

contains

subroutine regula(p0,p1,prec)
real,intent(inout) :: p0,p1,prec
real :: p2
do
	p2=p1
	p2=p2-(p1-p0)*f(p1)/(f(p1)-f(p0))
	if (f(p2)==0 .or. (abs((abs(p1)-abs(p2)))/2)<=prec .or. (abs((abs(p0)-abs(p2)))/2)<=prec) then
		print *, p2
		exit
	else if (f(p0)*f(p2)<0) then
		p1=p2
	else 
		p0=p2
	end if
end do
end subroutine regula

subroutine bisect(a,b,n,prec,c)

real,intent(inout) :: a,b,prec
real,intent(out) :: c
integer,intent(inout) :: n 
real :: p
integer :: i

do i=1,n
	c=(a+b)/2.0
	if (f(c)==0.0 .or. (abs(abs(a)-abs(b))/2.0)<=prec) then !probando el intentout en el programa
		print *, c
		exit
	else if (f(c)*f(a)>0) then
		a=c
	else 
		b=c
	end if
	
end do

end subroutine bisect

subroutine newt (x,precision)
real,intent(inout) :: x,precision
real :: p
do
	p=x-f(x)/fp(x)
	if (abs(x-p)<=(precision)) then
		exit
	else
		x=p
	end if
	
end do
print *, p
end subroutine newt


end module raices