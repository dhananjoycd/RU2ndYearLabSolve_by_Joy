program num_7
    implicit none
    integer:: n,j, isprime
    print*,"Enter the number :"
    read*,n
    !--------prime---------------
    if(isprime(n)==1)then
        print'(A, I3, A)',"The Number", n," is a prime number"
        !print*,n,"is a prime number"
    else
        print'(A, I3, A)',"The Number", n," is not a prime number"
        !print*,x,"is not a prime number"
   end if
   !-----------pre prime-----------
   if(n<=2) then
        print*,"There is no pre-prime number of",n
    else
      do j=n-1,2,-1
        if(isprime(j)==1)then
        print*,j,"is a pre-prime number"
        exit
        end if
      end do
   end if
   !--------post prime------------
   do j=n+1, n+5000, 1
        if(isprime(j)==1)then
        print*,j,"is a post-prime number"
        exit
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
