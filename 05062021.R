#5 de junio del 2021
matriz2 <- matrix(1:9, byrow = TRUE, nrow = 3) #contruya por filas [TRUE] por columnas [FALSE]
rownames(matriz2) <- c("a","b","c")
colnames(matriz2) <- c("c1","c2","c3")
matriz2

variable1 <- c(460.5, 320)
variable2 <- c(550, 850)
variable3 <- c(120, 540)

box <- c(variable1, variable2, variable3)

matriz3 <- matrix(box, byrow = TRUE, nrow = 3)
matriz3

rownames(matriz3) <- c("p1", "p2", "p3")
colnames(matriz3) <- c("US", "Exterior")

region <- c("US", "non-US")
titulos <- c("A new hope", "the empire Strike back", "Return of the jedi")

rownames(matriz3) <- titulos
colnames(matriz3) <- region

#sumar columas o filas

sum_fila <- rowSums(matriz3) #suma filas
sum_fila

todos_datos <- cbind(matriz3, sum_fila) #agrega una columna a datos ya creados
todos_datos

todos_cols <- colSums(todos_datos) #suma columnas
todos_cols

todos_datos <- rbind(todos_datos, todos_cols) #agrega fila
todos_datos

# selección de matriz
#fila 2
non_us_all <- todos_datos[,2]
non_us_all

#fila 1
us_all <- todos_datos[,1]
us_all

#intersección
non_dd <- todos_datos[1:3,2]
non_dd

#aritmetica con las matrices

us_all <- todos_datos[1:3,1]
us_all <- todos_datos * 1.5
mean(us_all)


#factores
sex_vector <- c("mujer", "hombre", "mujer", "hombre")
factor_vector <- factor(sex_vector)
factor_vector

#categorias Ordinal y nominal

#nominal, no pueden establecer un tipo de medición

temperatura <- c("alta", "baja", "media", "baja", "alta")
nominal_tem <- factor(temperatura, ordered = TRUE, levels = c("baja", "media", "alta")) #ordene por caracteristicas
nominal_tem

new_vector <- toupper(c("M", "F", "M", "m", "F", "M"))
factor_new <- factor(new_vector)
factor_new

levels(factor_new) <- c("Femenino", "Masculino")

#summary factor por categoría lo suma
summary(new_vector)
summary(factor_new)

masculino <- factor_new[1] #posicion de la categoría
masculino

femenino <- factor_new[2] #posicion de la categoría
femenino

masculino > femenino #no se puede

speed_vector <- c("medio", "slow", "slow", "medium", "fast")
factor_speed <-  factor(speed_vector, ordered = TRUE, levels = c("slow", "medio", "fast"))
factor_speed

da2 <- factor_speed[2]  #slow
da3 <- factor_speed[1]  #medio

da2
da3

da2 > da3


#sesión 2
#data frames

mtcars

head(mtcars)
tail(mtcars)

