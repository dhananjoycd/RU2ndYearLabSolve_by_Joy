program num_9
implicit none
integer:: i, n, count
print*, "Enter the number:"
read*,n
count=0
do i=1,n
    if(mod(n,i)==0) then
        count=count+1
        print*,i
    end if
end do
print'(A,I3,A,I3)',"There exist"count," factors inside",n
end program
