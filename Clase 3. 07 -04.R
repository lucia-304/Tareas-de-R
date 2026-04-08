#Tipo de Datos Estructurados
#Vecotres
notas <- c("Matemáticas" = 8.2, "Física" = 6.5, "Economía" = 4.5)
names(notas)
length(notas)

notas["Física"]
x <- 1:3 
2 %in% x

rm(x)

x <- c(1, 2, 3)
x[2] <- 0
print(x)
x[c(1, 3)] <- 1
print(x)

x <- c(1, 2,3)
c(x, c(4, 5))
append(x, c(4, 5),2)

x <- c("a","b","c","d","e")
x[-3]
x[-c(2, 4)]

#Operaciones aritméticas
x <- c(1 ,2, 3)
y <- c(0, 1, -1)
x+y
x*y
x%*%y

#Factores
sexo <- factor(c("mujer", "hombre", "mujer"))
sexo
class(sexo)
str(sexo)

grupo.sanguíneo <- factor(c("B", "A", "A"), levels = c("A", "B", "AB", "0"),)
grupo.sanguíneo

nivel.estudio <- factor(c("Secundarios", "Graduados", "Bachiller"),levels = c("Sin estudios", "Primarios", "Secundarios", "Bachiller", "Graduados"),ordered = TRUE)
nivel.estudio
is.factor(nivel.estudio)

sexo[2]
sexo[c(1, 2)]
sexo[-2]
levels(sexo)

grupo.sanguíneo
grupo.sanguíneo[2] <- "AB"
grupo.sanguíneo
grupo.sanguíneo[1] <- "C"
grupo.sanguíneo

#Dataframes
df <- data.frame(asignatura = c("Matemáticas", "Física", "Economía"), nota = c(8.5, 7, 4.5))
df
str(df)

df2 <- read.csv('https://raw.githubusercontent.com/asalber/manual-r/master/datos/colesterol.csv')
df2
head(df2,1)
tail(df2,3)
print(summary(df2))
df2$nombre
df2[df2$edad >= 20, ]

print(df)
df["asignatura"]
df$asignatura

df[2:3, "nota"]
df[df$nota >= 5,]
head(df, 2)
tail(df, 2)

df[3, "nota"] <- 5
df

rbind(df, list("Programación", 10))
cbind(df, créditos = c(6, 4, 3))
df

df$nota <- NULL
df
df[-2,]

data <- c(1:5, 56, 43, 56, 78, 51)
print(data)
print(summary(data))
data <- data.frame(col1 = c(1:5, 56, 43, 56, 78, 51), col2 = c(100:104, 56, 43, 56, 78, 51), col3 = c(1:5, 34, 56, 78, 76, 79))
print(data)
print(summary(data))

datos <- list("nombre" = "María", "edad" = 21, "dirección" = list("calle" = "Lineo", "numero" = 32))
datos$nombre
datos$dirección
datos$dirección$calle
length(datos)
names(datos)
datos[1]
datos[2]
datos[3]
datos$edad <- 23
print(datos)
