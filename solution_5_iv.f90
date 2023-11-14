program num_5_iv
    implicit none
    integer:: n, i
    real:: sum
    print*,"Enter the number of terms"
    read*, n
    sum = 0
    do i=1, n
        sum = sum+(((-1)**(i+1))/(i*1.0))
    end do
      print 10, n, sum
    10 format(1x, "The sum of first",I3, " terms is", f7.4)
  !print *, "The sum of first", n, "terms is", sum
end program
