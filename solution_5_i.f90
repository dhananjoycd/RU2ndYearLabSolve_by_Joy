program num_5_i
    implicit none
    integer:: n, i
    real:: alpha, beta, sum
    real, parameter::pi=3.1416
    print*, "Enter the number of terms 'n' and value of 'alpha', 'beta'"
    read*, n, alpha, beta
    alpha = (pi/180)*alpha !Degree to Radian
    beta  = (pi/180)*beta  !Degree to Radian
    sum=0
    do i=1,n
        sum=sum+sin(alpha+(i-1)*beta)
    end do
    print'(A,F8.4)',"The total sum of series is:", sum
end program
