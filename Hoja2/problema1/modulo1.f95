module modfact

public :: fact

contains 

recursive function fact(n) result(m)
	integer,intent(in) :: n
	integer :: m
	if ((n==1) .or. (n==0)) then
		m=1
	else
		m=n*fact(n-1)
	end if
end function fact

end module modfact

