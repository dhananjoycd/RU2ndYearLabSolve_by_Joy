program num_10
    implicit none
    integer::a,b,lowest,highest,total,i,j,count
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
       count=0
     print'(A,I3,A,I3)',"The perfect numbers are showed betwen",lowest ," and" ,highest
    do j=lowest,highest,1
        total=0
        do i=1, j/2,1
            if(mod(j,i)==0) then
                total=total+i
            end if
        end do
        if(j==total) then
            print*,j
            count=count+1
        end if
    end do
    print*,count,"Perfect number exist"
end program
