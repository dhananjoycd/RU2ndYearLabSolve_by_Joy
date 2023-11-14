program num_12
    implicit none
    integer::i,n,j,sum
    print*,"Enter the row number:"
    read*,n
    sum=0
    do j=1,n
        do i=1,j
         sum=sum+1  !next row te koyta element hobe te jante
        write(*,"(I6)", advance="no")sum
        end do
        write(*,"(/)")
        !print*," "
    end do
end program

!The advance='no' option in the write
!statement ensures that the numbers
!are printed on the same line without
!moving to the next line.
