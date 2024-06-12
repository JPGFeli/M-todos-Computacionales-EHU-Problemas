module modbessel

public :: fact,bessel

contains

recursive function fact(x) result(f_result)
	integer,intent(in) :: x
	integer :: f_result
	if (x==0 .or. x==1) then
		f_result=1
	else
		f_result=x*fact(x-1)
	end if
end function fact

function bessel(x,n) result(f_result)
	real,intent(in) :: x
	real :: f_result
	integer,intent(in) :: n
	integer :: i
	f_result=0
	do i=0,15
		f_result=f_result+(-1.0)**i*x**(2.0*i+n)/(fact(i)*fact(i+n)*2.0**(2.0*i+n))
	end do
end function bessel

end module modbessel
	