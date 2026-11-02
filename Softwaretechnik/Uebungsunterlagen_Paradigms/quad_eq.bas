CLS
DIM a AS DOUBLE
DIM b AS DOUBLE
DIM c AS DOUBLE
DIM d AS DOUBLE

DIM result1 AS DOUBLE
DIM result2 AS DOUBLE

PRINT "Solution of equations of the form ax² + bx + c = 0"

PRINT "Value of variable a: " : INPUT a
PRINT "Value of variable b: " : INPUT b
PRINT "Value of variable c: " : INPUT c

d = ((b * b) - (4 * a * c))

IF a = 0 THEN
	PRINT "No quadratic equation."
ELSEIF d < 0 THEN
	PRINT "There is no solution."
ELSEIF d = 0 THEN
	result1 = (-1 * b) / (2 * a)
	PRINT "Result x_1 = x_2 = ", result1
ELSEIF d > 0 THEN
	result1 = ((-1 * b) + sqr((b * b) - ( 4 * a * c))) / (2 * a)
	result2 = ((-1 * b) - sqr((b * b) - ( 4 * a * c))) / (2 * a)
	PRINT "The solutions of the equation are"
	PRINT "x_1 = ", result1
	PRINT "x_2 = ", result2
ENDIF