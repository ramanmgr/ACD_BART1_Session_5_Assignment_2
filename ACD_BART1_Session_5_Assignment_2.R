##1.	Obtain the elements of the union between two character vectors. 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[10:32,])) 

#we use union function
#The union of two sets is everything in the two sets taken together, 
#but counting elements only once that are common to both sets:
vec1 = c(rownames(mtcars[1:15,]))
vec1
vec2 = c(rownames(mtcars[10:32,]))
vec2

union(vec1,vec2)


##2.	Get those elements that are common to both vectors. 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[10:32,])) 

#we use intersect function

vec1 = c(rownames(mtcars[1:15,]))
vec1
vec2 = c(rownames(mtcars[10:32,]))
vec2

intersect(vec1,vec2)


##3.	Get the difference of the elements between two character vectors. 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[10:32,])) 

#the difference between two sets is order-dependent. 
#It is the material that is in the first named set, 
#that is not in the second named set. 
#Thus setdiff(A,B) gives a different answer than setdiff(B,A)

# elements of vec1 which are not in vec2
setdiff(vec1,vec2)

# elements of vec2 which are not in vec1
setdiff(vec2,vec1)


#Another Method

vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[10:32,])) 

# elements of vec1 which are not in vec2
vec1[!vec1%in%vec2]

# elements of vec2 which are not in vec1
vec2[!vec2%in%vec1]

#elements which are not common in vec1 and 2
union(vec1[!vec1%in%vec2],vec2[!vec2%in%vec1])



##4.	Test the quality of two character vectors. 
vec1 = c(rownames(mtcars[1:15,])) 
vec2 = c(rownames(mtcars[11:25,])) 

#*so in question it is given wrong so actually it is equality rather than quality


#some of functions by which we can test 

is.element(vec1,vec2)

identical(vec1,vec2)

setequal(vec1,vec2)

vec1 %in% vec2


