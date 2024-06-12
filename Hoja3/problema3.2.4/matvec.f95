program matvec

real,dimension(:,:),allocatable :: mat
real,dimension(:), allocatable :: vec
real,dimension(:),allocatable :: vec2
integer :: i,j,m,n,r
real :: sum

print *, "Introduce los valoes mxn de la matriz"
read *, m,n
allocate (mat(m,n))
allocate (vec(n))
allocate (vec2(m))

call random_seed()

print *, "Si quiere que los valores sean aleatorios escriba 1, si quiere escribirlos a mano escriba 0"
read *, r
if (r==1) then
call random_number(mat)
call random_number(vec)
else
	print *, "Escriba los valores de la matriz"
	do i=1,m
		do j=1,n
			print *, "mat(",i,";",j,"):"
			read *, mat(i,j)
		end do
	end do
	print *, "Escriba los valores del vector"
	do i=1,n
			print *, "mat2(",i,";",1,"):"
			read *, vec(i)
	end do
end if

do i=1,m
	sum=0.0
	do j=1,n
		sum=sum+mat(i,j)*vec(j)
		vec2(i)=sum
	end do
end do
print *, "La matriz resultante es:"
do i=1,m
	print*, vec2(i)
end do

end program matvec