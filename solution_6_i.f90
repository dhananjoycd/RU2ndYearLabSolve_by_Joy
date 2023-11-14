program num_6_i
    implicit none
    integer:: n, i
    real:: sum
    print*, "Enter the number of terms:"
    read*,n
    sum=0
    do i=1,n
        if (mod(i,2)==1) then
           sum=sum+(1.0/i)
        else
            sum=sum+(i/(i+1.0))
        end if
    end do
    print'(A,I3,A,F8.4)',"The sum of" ,n, " terms is", sum
end program
