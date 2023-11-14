program num_19
    implicit none
    real:: value , f
    print*,"Enter the value of x"
    read*, value
    print'(A, F8.2)',"The result is",f(value)
end program

real function f(x)
    implicit none
    real::x
    if(x<=0) then
        f=0
    elseif(x>0 .and. x<=2) then
        f=x
    else
        f=2*x-2
    end if
end function
