program num_13
    implicit none
    integer::n,i,j,p
    print*,"Enter the row number of Pascal Triangle:"
    read*,n
    do i=0,n-1
        p=1
        do j=0,n-i
            write(*,'(3x)', advance="no")
        end do
        do j=0,i
        write(*,'(I5)', advance="no")p
             p=p*(i-j)/(j+1)
        end do
        write(*,'(/)')
    end do
end program
