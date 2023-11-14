!Find the center and radius of the circum circle of a triangle if the vertices of the triangle are given
program num_3
  implicit none
  real :: x1, y1, x2, y2, x3, y3, a, b, c, a1, a2, b1, b2, c1, c2, x, y, r

  ! Input vertices of the triangle
  print *, "Enter the 1st vertices of the triangle (x1 y1):"
  read *, x1, y1
  print *, "Enter the 2nd vertices of the triangle (x2 y2):"
  read *, x2, y2
  print *, "Enter the 3rd vertices of the triangle (x3 y3):"
  read *, x3, y3

  ! Calculate the side lengths
  a = sqrt((x1 - x2)**2 + (y1 - y2)**2)
  b = sqrt((x2 - x3)**2 + (y2 - y3)**2)
  c = sqrt((x3 - x1)**2 + (y3 - y1)**2)

  ! Check if a triangle with the given vertices exists
  if (a + b > c .and. b + c > a .and. c + a > b) then
    a1 = 2.0 * (x2 - x1)
    a2 = 2.0 * (x2 - x3)
    b1 = 2.0 * (y2 - y1)
    b2 = 2.0 * (y2 - y3)
    c1 = x1**2 - x2**2 + y1**2 - y2**2
    c2 = x3**2 - x2**2 + y3**2 - y2**2

    ! Calculate the coordinates of the circumcenter
    x = (b1 * c2 - b2 * c1) / (a1 * b2 - a2 * b1)
    y = (c1 * a2 - c2 * a1) / (a1 * b2 - a2 * b1)

    ! Calculate the radius
    r = sqrt((x - x1)**2 + (y - y1)**2)

    ! Output the results
    print *, "Center of the circumcircle is", x,y
    print *, "Radius of the circumcircle is", r
  else
    print *, "Triangle does not exist for those points."
  end if
end program num_3
