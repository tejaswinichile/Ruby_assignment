
def find_area(base,height)

	area=(base*height)*0.5

end

print "Enter base for traingle:"
tri_base=gets.chomp.to_i
print "Enter height for triangle"
tri_height=gets.chomp.to_i
print "area of triangle is:"
print find_area(tri_base,tri_height)
