program num_24
    implicit none
    real:: x0,xn,f, i , h
    print*,"Enter the number Xo and Xn (Xo < Xn ): "
    read*, x0,xn
    print*, "Enter the step size"
    read*, h

    do i = x0, xn, h
     print*, "The function f(", i , ") = " ,f(i)
    end do
end program

   real function f(x)
   implicit none
   real:: x, pi
   pi = 3.1416
   f = x**3 + sin(2*x*pi/180)
   end function
