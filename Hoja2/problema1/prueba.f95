program prueba

real,dimension(3,4,2) :: mat
real :: rv
integer :: i,j,k

do i=1,3
	do j=1,4
		do k=1,2
			call random_number(rv)
			mat(i,j,k)=10*rv
		end do
	end do
end do
do i=1,3
	do j=1,4
		do k=1,2
			print *, mat(i,j,k)
		end do
	end do
end do
end program prueba