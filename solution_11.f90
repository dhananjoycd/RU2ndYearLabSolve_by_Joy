program num_11
    implicit none
    integer::a,b,lowest,highest,sum,i,j
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
    print'(A,I3,A,I3)',"The triangular numbers are showed between",lowest ," and" ,highest
    do j=lowest,highest,1
        sum=0
        do i=1,j
          sum=sum+i
          if(sum==j) then
            print*,j
            exit
          end if
        end do
    end do
end program
