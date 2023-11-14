program num_25
    implicit none
    integer :: i, n, p, m
    integer, allocatable :: x(:)

    ! Prompt user to enter the order of the list
    print*, "Enter the order of the list"
    read*, n

    ! Allocate memory for the array x
    allocate(x(n))

    ! Prompt user to enter the numbers of the list
    print*, "Enter the numbers of the list"
    read*, (x(i), i=1, n)

    ! Prompt user to enter a particular position in the list
    print*, "Enter a particular position in the list"
    read*, p

    ! Prompt user to enter the number to insert at the particular position
    print*, "Enter the number in the particular position"
    read*, m

    ! Print the inputted list
    print*, "Inputted list"
    print 10, (x(i), i=1, n)

    ! Shift elements to make space for the new number
    do i = p, n
        x(n + p + 1 - i) = x(n + p - i)
    end do

    ! Insert the new number at the particular position
    x(p) = m

    ! Print the resultant list
    print*, "Resultant list"
    print 10, (x(i), i=1, n ) !n+1 --if we want to show last element which is skipped

10  format(1X, 100i5, 1X)
end program num_25
