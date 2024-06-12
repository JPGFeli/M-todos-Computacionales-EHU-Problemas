program prueba

real,dimension(3,4,2) :: mat
integer,dimension(3) :: posicion
integer :: i,j,k,suma

call random_seed()
suma=0
call random_number(mat)
mat=10*mat
print *, "El valor mayor es", maxval(mat),"y su posición es",maxloc(mat)
mat=nint(mat)
print *, "La suma de los valores redondeados de la matriz es",sum(mat)
end program prueba