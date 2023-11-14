program num_5_ii
    implicit none
    integer:: n, i
    real:: x, sum
    real, parameter::pi=3.1416
    print*, "Enter the number of terms 'n' and value of 'x'"
    read*, n, x
    x = (pi/180)*x !Degree to Radian
    sum=0
    do i=1,n
        sum=sum+cos((i-1)*x)
    end do
    print'(A,F8.4)',"The total sum of series is:", sum
end program
