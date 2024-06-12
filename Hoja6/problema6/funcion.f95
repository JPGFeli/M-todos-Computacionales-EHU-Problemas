module funcion

use cuadratura
use mcf_cuadratura
use mcf_tipos

public :: f,derv
private:: gauleg_sp

contains

function derv(x) result(derv_result)
real,intent(in) :: x
real :: derv_result,pi
pi=acos(-1.0)
derv_result=(1.0/(2.0*pi)**0.5)*exp(-x**2/2)
end function derv

function f(x) result(f_result)

real,intent(in) :: x
real :: f_result,a
real,dimension(1:20) :: xi,wi
integer :: n,i
n=20
a=0.0 !Limite de integracion
call gauleg_sp(a,x,xi,wi,n)
f_result=0.0
do i=1,n

f_result=f_result+wi(i)*derv(xi(i))

end do

f_result=f_result-0.45

end function f


pure subroutine gauleg_sp(x1,x2,x,w,n)
integer, intent(in)                      :: n
real(kind=sp), intent(in)                :: x1,x2
real(kind=sp), intent(out), dimension(:) :: x,w
integer                                  :: i,j,m
!precision relativa
real(kind=dp), parameter                 :: eps=3.0e-14   
real(kind=dp)                            :: p1,p2,p3,pp,xl,xm,z,z1
!
!Dados los limites de integracion x1 (inferior) y x2 (superior), y dado n,
!esta subrutina devuelve las matrices x(1:n) y w(1:n) que contienen las
!abscisas y pesos necesarios para la cuadratura de Gauss-Legendre con n puntos.
!
!Los calculos son realizados en doble precision aunque el resultado se devuelva
!en simple precision.
!

!Las raices son sim tricas en el intervalo, por lo que solo es preciso calcular 
!la mitad
m=(n+1)/2         

xm=0.5_dp*(x2+x1)
xl=0.5_dp*(x2-x1)

do i=1,m      !bucle sobre todas las raices
!
!Primera aproximacion de la raiz i-esima.
!
        z=cos(3.141592654_dp*(i-0.25_dp)/(n+0.5_dp))

!
!Refinamiento de la raiz (Metodo de Newton)
!
newton: do
            p1=1.0_dp
            p2=0.0_dp
!
!Recurrencia de los polinomios de Legendre evaluados en z.
!
            do j=1,n
                 p3=p2
                 p2=p1
                 p1=((2.0_dp*j-1.0_dp)*z*p2-(j-1.0_dp)*p3)/j
            end do
!
!p1 es el polinomio de Legendre. A continuacion calculamos su derivada, pp,
!mediante una relacion que require p2, el polinomio un orden mas bajo.
!
            pp=n*(z*p1-p2)/(z*z-1.0_dp)
            z1=z
!
!Metodo de Newton        
!
            z=z1-p1/pp
            
            if (abs(z-z1) <= eps) then
                exit newton
            end if
            
        end do newton
!
!Escalado de las raices al intervalo deseado
!
             x(i)=real(xm-xl*z,sp)
!
!Raiz simetrica
!             
             x(n+1-i)=real(xm+xl*z,sp)
!
!Calculo de los pesos
!
             w(i)=real(2.0_dp*xl/((1.0_dp-z*z)*pp*pp),sp)
!
!y su contrapartida simetrica
!
             w(n+1-i)=w(i)
end do
    
end subroutine gauleg_sp


end module funcion
