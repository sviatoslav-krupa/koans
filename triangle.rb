# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb

EQUILATERAL = :equilateral
ISOSCELES = :isosceles
SCALENE = :scalene

def any_side_is_negative_or_zero?(a, b, c)
  a <= 0 || b <= 0 || c <= 0
end

def sum_of_two_sides_are_bigger_than_third_one(a, b, c)
  (a + b > c) && (a + c > b) && (b + c > a)
end

def triangle(a, b, c)
  # WRITE THIS CODE

  if any_side_is_negative_or_zero?(a, b, c) || !sum_of_two_sides_are_bigger_than_third_one(a, b, c)
    raise TriangleError
  end

  return EQUILATERAL if a == b && a == c
  return ISOSCELES if a == b || a == c || b == c
  SCALENE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
