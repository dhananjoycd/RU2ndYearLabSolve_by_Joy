program num_8
    implicit none
    integer::a,b,lowest,highest,isprime,j
    print*,"Enter the two numbers"
    read*,a,b
    lowest=min(a,b)
    highest=max(a,b)
    print'(A,I3,A,I3)',"The prime numbers are showed betwen",lowest ," and" ,highest
    do j=lowest,highest,1
        if(isprime(j)==1)then
           if(j>=2)then
             print*,j
           end if
        end if
    end do
end program

!custom function to find prime
integer function isprime(x)
implicit none
integer::i,x,check
check=1
do i=2,x/2,1
    if(mod(x,i)==0)then
    check=0
    exit
    end if
end do
isprime=check
end function
