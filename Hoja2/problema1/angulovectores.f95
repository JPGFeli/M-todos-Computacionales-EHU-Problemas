program angulovectores

integer :: i
real, dimension(3) :: vector1, vector2
real :: mod1,mod2,producto,angl

!Asignamos las componenetes a los vectores
print *, "Escriba los componentes del primer vector separados por un espacio"
read *, vector1

print *, "Escriba los componentes del segundo vector separados por un espacio"
read *, vector2

!Hallamos los módulos 
mod1=0
do i=1,3
	mod1=mod1 + (vector1(i)*vector1(i))
end do
mod1=mod1**(0.5)
mod2=0
do i=1,3
	mod2=mod2 + (vector2(i)*vector2(i))
end do
mod2=mod2**(0.5)

!Hallamos el producto escalar
producto=0
do i=1,3
	producto=producto + (vector1(i)*vector2(i))
end do

!Aplicamos la fórmula
angl=producto/(mod2*mod1)

print *, "El ángulo formado entre los vectores es ",acos(angl)
end program angulovectores