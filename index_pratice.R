#making vectors 

# character vector 
dogs <- c("teddy", "khora", "waffle", "banjo")
class(dogs)
typeof(dogs)

#numeric vector 
weights <- c(50, 55, 25, 35)
class(weights)
typeof(weights)

dog_age <- c(1L, 7L, 5L)
class(dog_age)
typeof(dog_age)

is.numeric(dog_age)

#what happens when we combined classes 
dog_info <- c("teddy", 50, 5L)
class(dog_info)
dog_info

# named elements 
dog_food <- c(teddy = "purina", 
              khora = "alpo", 
              waffle = "fancy feast", 
              banjo = "blue diamond")
class(dog_food)

#accessing bits of vectors 
dog_food[2]
dog_food["khora"]
dog_food[1:3]

#warm up to loops 
i <- 3
dog_food[i]


# MATRICES 
fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), 
                    ncol = 2, 
                    nrow = 2, 
                    byrow = FALSE)
fish_size
typeof(fish_size)
class(fish_size)

fish_size[1,2]

# lists 
urchins <- list("blue", 
                c(1,2,3), 
                c("cat", "dog"),
                5L)
urchins

urchins[2]
urchins[[2]]


#naming lists 
tacos <- list(toppings = c("onions", "cilantro", "guac"), 
              filling = c("beans", "meat", "cheese"), 
              price = c(6.75, 8.25, 9.50))
tacos
tacos[2]
tacos$toppings
tacos[[2]]

#data Frames
fruit <- data.frame(type = c("apple", "banana", "peach"), 
                    mass = c(130, 195, 150))
fruit
class(fruit)

fruit[1,2]
fruit[1,2] <- "pineapple"


# selected multiple elements 
x <- 1:10
x[c(3,1,5)]

#excludes elemenst with negative intergers
x[-10]
x[-c(2,4,6,8,10)]

# logical vectors 
x[c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE)]
x[x>3]
x[0]

#subsetting and assigning multiple values 
x <- 1:5
x[c(1,2)] <- 2:3
x[-1] <- 4:1

# subset rows in data frames based on conditions (logical subsetting)
mtcars[mtcars$gear== 5, ]
mtcars[mtcars$gear== 5 & mtcars$cyl == 4, ]

subset(mtcars, gear = 5)
subset(mtcars, gear ==5 & cyl ==4)

# remove columns 
df <- data.frame(x=1:3, 
                 y= 3:1, 
                 z = c("a", "b", "c"))
names(df)
setdiff(names(df))
