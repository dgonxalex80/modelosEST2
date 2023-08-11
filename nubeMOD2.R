library("tm")
library("SnowballC")
library("wordcloud2")
library("RColorBrewer")
# nube1 <- read.csv("data/nube1.csv")

palabras=c("MODELO  ",
           "REGRESIÓN  ",
           "LINEAL  ",
           "CORRELACIÓN  ",
           "PARÁMETRO  ",
           "ESTIMADOR  ",
           "NORMALIDAD  ",
           "HETEROSCEDASTICIDAD  ",
           "MULTICOLINEALIDAD  ",
           "ERRORES  ",
           "RESIDUALES  ",
           "BETAS  ",
           "MÍNIMOS CUADRADOS  ",
           "COEFICIENTE DE PEARSON  ",
           "COEFICIENTE DE SPERARMAN  ",
           "MATRIZ  ", 
           "VECTOR  ",
           "COMBINACIÓN LINEAL  ",
           "MATRIZ CUADRADA  ",
           "MATRIZ SINGULAR  ",
           "MATRIZ IDENTICA  ",
           "MATRIZ TRANSPUESTA  ",
           "MATRIZ INVERSA  ",
           "MATRIZ DE VARIANZAS COVARIANZAS  ",
           "VARIANZA  ", 
           "VALOR ESPERADO  ",
           "r ",
           "ECUACIONES NORMALES  ",
           "INSESGADO  ",
           "EFICIENTE  ",
           "CONSISTENTE  ",
           "ROBUSTO  ",
           "INDEPENDIENTES  ",
           "VARIANZA CONSTANTE  ",
           "SHAPIRO-WILK  ",
           "KOLMOGOROV SMIRNOV  ",
           "GOLDFELD–QUANDT  ",
           "DURBIN–WATSON  ",
           "T-STUDENT  ",
           "CHI-CUADRADO  ",
           "F  ",
           "NIVEL DE SIGNIFICANCIA  ",
           "INTERVALO DE CONFIANZA  ",
           "PRUEBA DE HIPOTESIS  ",
           "ANOVA  ",
           "SUMA DE CUADRADOS  ",
           "GRADOS DE LIBERTAD  ",
           "MODELO NULO  ",
           "ESTADÍSTICO DE PRUEBA  ",
           "VALOR-P  ",
           "BONDAD DE AJUSTE  ",
           "AIC  ",
           "R2  ",
           "BIC  ",
           "RMSE  ",
           "AJUSTE DEL MODELO  ",
           "VARIABLES CATEGÓRICAS  ",
           "EFECTO  ",
           "SIGNOS A PRIORI  ",
           "MATRIZ DE CORRELACIONES  ",
           "VIF  ")
 #61

replicas=c(5,5,5,5,5,5,3,3,3,3,3,3,5,5,5,3,3,3,3,3,3,3,3,5,3,3,5,3,4,4,4,4,4,4,3,3,3,3,3,3,3,
           4,4,4,4,4,4,3,3,3,3,3,4,3,3,4,3,3,3,3,5)

nube1=rep(palabras, replicas)

t=data.frame(table(nube1))

dword=t[,1]
dfreq=t[,2]
set.seed(1234)
wordcloud::wordcloud(words = dword, freq = dfreq, min.freq = 1,
            max.words=200, random.order=FALSE, rot.per=0,
            colors=brewer.pal(8, "Dark2"))

c("#F27F0C", "#F7AD19", "#053F5C", "#429EBD", "#034A94")
library(wordcloud2)
wordcloud2(data = t, size = 0.2, color=rep_len( c("#F27F0C", "#F7AD19", "#053F5C", "#429EBD", "#034A94"), nrow(demoFreq) ) )

           