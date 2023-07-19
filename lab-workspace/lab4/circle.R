# Create an R file named circle.r. The script will ask user to enter the radius of a circle
# and a coordinate point (x, y). Determine whether the point is inside or outside the
# circle centered at (0, 0).

radius <- as.integer(readline("Enter radius of circle: "))
coor <- readline("Enter coordinates (x,y): ")

# Split the user input into a vector of two numbers
xy <- as.numeric(strsplit(coor, " ")[[1]])

# Calculate the distance between the point and the center of the circle
dist <- sqrt(xy[1]^2 + xy[2]^2)

# Check if the point is inside or outside the circle
if (dist < radius) {
  cat("The point", coor, "is inside the circle.\n")
} else if (dist == radius) {
  cat("The point", coor, "is on the circle.\n")
} else {
  cat("The point", coor, "is outside the circle.\n")
}