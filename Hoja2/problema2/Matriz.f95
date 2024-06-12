program prueba

real,dimension(3,4,2) :: mat
integer,dimension(3) :: posicion
real :: rv,max
integer :: i,j,k,suma

call random_seed()
max=0
suma=0
do i=1,3
	do j=1,4
		do k=1,2
			call random_number(rv)
			mat(i,j,k)=10*rv
			print *, mat(i,j,k)
			if (mat(i,j,k)>max) then
				max=mat(i,j,k)
				posicion(1)=i
				posicion(2)=j
				posicion(3)=k
			end if
			mat(i,j,k)=nint(mat(i,j,k))
			suma=suma+mat(i,j,k)
			
		end do
	end do
end do
print *, "El valor mayor es", max, " y está en la posición" ,posicion
print *, "La suma de todos los valores redondeados es",suma
end program prueba