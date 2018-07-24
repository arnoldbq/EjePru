######### Diapositiva 6
library(prob)
### Dados numero de caras: 4,6,8,10,12,20
tosscoin(1)
tosscoin(2)
tosscoin(3)


######## Diapositiva 8
rolldie(2)
rolldie(2, nsides=10)
rolldie(2, nsides=12)

#######  Diapositiva 11
urnsamples(1:3, size=2, replace=TRUE, ordered=TRUE)

####### Diapositiva 12
urnsamples(1:3, size=2, replace=FALSE, ordered=TRUE)
CTOS<-c("Juan","Sofia","Maria")
urnsamples(CTOS, size=2, replace=FALSE, ordered=TRUE)

#######  Diapositiva 13
urnsamples(1:3, size=2, replace=FALSE, ordered=FALSE)
urnsamples(1:3, size=2, replace=TRUE, ordered=FALSE)

#######  Diapositiva 15
### El experimento consiste en lanzar dos veces una moneda al aire
S<-tosscoin(2, makespace=TRUE)
#### Qué almenos en uno de los dos lanzamientos la moneda caiga por el lado de la cara 
S[c(1:3),]
##### Qué en el primer lanzamiento la moneda caiga por el lado de sello
S[c(2,4),]

#######  Diapositiva 16
S<-cards(makespace=TRUE)
#### Eventos: Qué al escoger una carta, ésta pertenezca a al palo de corazones:
subset(S, suit=="Heart")
##### Eventos: Qué al escoger una carta, ésta tenga los numeros 7,8 ó 9. 
subset(S, rank \%in\% 7:9)

#######  Diapositiva 17
x <- 1:10
y <- 8:12 
y %in% x
isin(x,y)

#######  Diapositiva 18
S<-cards( makespace=TRUE)
subset(S, isin(S,c(2,2,6), ordered=TRUE))

#######  Diapositiva 19
S <- cards()
A <- subset(S, suit == "Heart")
B <- subset(S, rank %in% 7:9)

#######  Diapositiva 20
union(A,B)
intersect(A,B)
setdiff(A,B)
setdiff(B,A)


##### prueba union disyuntiva #####
S=rolldie(1)
S=rolldie(1, makespace=TRUE)
A=subset(S, S[,1] %in% c(1:4))
B=subset(S1, S1[,1]%in% c(1, 3, 5))
UN =union(A, B)
sum(UN[,2])

#######  Diapositiva 16
###### Ahora con una baraja de francesa (52 unidades repartidas en cuatro palos: corazones, diamantes, tréboles y picas)
S<-cards( makespace=TRUE)

#### También se pueden extraer las filas que satisfagan una expresión lógica usando la función subset

#### Qué al escoger una carta ésta pertenezca a al palo de corazones: 
subset(S, suit=="Heart")

##### Qué al escoger una carta ésta tenga los numeros 7,8 ó 9. 
subset(S, rank %in% 7:9)


####### Diapositiva 33
urnsamples(1:3, size=2, replace=TRUE, ordered=TRUE)
nsamp(n=3, k=2, replace=TRUE, ordered=TRUE)

urnsamples(1:3, size=2, replace=FALSE, ordered=TRUE)
nsamp(n=3, k=2, replace=FALSE, ordered=TRUE)

urnsamples(1:3, size=2, replace=FALSE, ordered=FALSE) 
nsamp(n=3, k=2, replace=FALSE, ordered=FALSE) 

urnsamples(1:3, size=2, replace=TRUE, ordered=FALSE)
nsamp(n=3, k=2, replace=TRUE, ordered=FALSE)


### funcion binomial###

X=rbinom(n=100, size=7,prob=0.3)
barplot(table(X))

### funcion poisson ###

X=dpois(5, lambda=10) ### x=5, lambda = 10

### funcion hiperg ###

X=dhyper(x=1, m=5, n=7,k=3)### N=12, n=3, r=5, x=1
X

### funcion normal ###
X=rnorm(1,0)
X
