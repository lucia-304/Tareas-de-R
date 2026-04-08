nombre <- c("Carlos", "María", "Carmen", "Pedro", "Luis", "Sara")                 
sexo <- c("H", "M", "M", "H", "H", "M")
física <- c(6.7, 7.2, 5.5, NA, 3.5, 6.2)
química <- c(8.1, 9.5, 5, 4.5, 5, 4)

sexo <- factor(c(sexo, levels = c("H", "M")))
media <- rowMeans(cbind(física, química), na.rm = TRUE)            
aprobado <- media >= 5

alumnos_aprpbados <- nombre[aprobado]
df <- data.frame(nombre, sexo, física, química, media, aprobado)
length(nombre)
length(sexo)
length(física)
length(química)
length(media)
print(sexo)
length(aprobado)

sexo <- c(sexo)
print(sexo)
substr(sexo, start=1, stop=6)

print (sexo)
sexo <- substr(sexo, start=1, stop=6)
print (sexo)

sexo[-7]
sexo[-7]
sexo[-8]
sexo[-7]
print (sexo)
sexo <- (sexo[-8][-7])
print(sexo)

df <- data.frame(nombre, sexo, física, química)
print (df)
df <- cbind(df, media)
df <- df[-1,]
print(df)
df <- df[-4,]
print (df)
df <- df[-3,]
print (df)
df <- df[-3]
print (df)
df <- df[-3]
print (df)
df <- df[-2]
print (df)

