program pr

complex,dimension(2) :: a
integer :: i

do i=1,2
	a(i)=cmplx(0.0,2.0**i)
end do
print *, a

end program pr
