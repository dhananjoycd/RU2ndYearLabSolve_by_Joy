program number_1
    implicit none
    real:: a, b, c,  x1, y1, x2, y2, x3, y3
    print*, "Enter the triangle vertices 1, 2, 3"
    read*, x1, y1, x2, y2, x3, y3

    !it's for calculate the edge of triangles
    a=sqrt((x2 - x1)**2 + (y2 - y1)**2)
    b=sqrt((x3 - x1)**2 + (y3 - y1)**2)
    c=sqrt((x3 - x2)**2 + (y3 - y2)**2)

    if (a<b+c .and. b<a+c .and. c<a+b) then
        print*, "It is possible to make a triangle"
    ! Check the type of triangle
      if (a == b .and. b == c) then
         print*,"Equilateral triangle"
      else if (a == b .or. a == c .or. b == c) then
          print*,"Isosceles triangle"
      else
       print*,"Scalene triangle"
      end if
    else
        print*, "It is not a triangle"
    end if
end program
