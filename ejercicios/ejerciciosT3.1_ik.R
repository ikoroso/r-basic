#Calculamos los días
segundos<-250000000
segxdia=24*60*60
numdias<-segundos%/%segxdia
restosegundos<-segundos%%segxdia

#Calculamos los bloques de cuatro años
diasxbloque=365+366+365+365
ciclos4anuales <- numdias%/%diasxbloque
restodiasbloque <- numdias%%diasxbloque

#Calculamos los años enteros del resto de segundos, sabiendo que el segundo año es bisiesto
DiasAño1=365
DiasAño2=365+366
DiasAño3=365+366+365
DiasAño4=365+366+365+365
restoaños=0
if (restodiasbloque>=DiasAño1){restoaños=restoaños+1;restodiasaño=DiasAño2-restodiasbloque}else {restodiasbloque=restodiasaño}
if (restodiasbloque>=DiasAño2){restoaños=restoaños+1;restodiasaño=DiasAño3-restodiasbloque}
if (restodiasbloque>=DiasAño3){restoaños=restoaños+1;restodiasaño=DiasAño4-restodiasbloque}

#Calculamos el mes y el día
DiasMes01=31
DiasMes02=28
if(restoaños==1){DiasMes02<-DiasMes01+29}else {DiasMes02<-DiasMes01+28}
DiasMes03=DiasMes02+31
DiasMes04=DiasMes03+30
DiasMes05=DiasMes04+31
DiasMes06=DiasMes05+30
DiasMes07=DiasMes06+31
DiasMes08=DiasMes07+31
DiasMes09=DiasMes08+30
DiasMes10=DiasMes09+31
DiasMes11=DiasMes10+30
DiasMes12=DiasMes11+31
if (restodiasaño>=DiasMes01){mes=2;restodiasmes=DiasMes02-restodiasaño}else {mes=1;restodiasmes<-restodiasaño}
if (restodiasaño>=DiasMes02){mes=3;restodiasmes=DiasMes03-restodiasaño}
if (restodiasaño>=DiasMes03){mes=4;restodiasmes=DiasMes04-restodiasaño}
if (restodiasaño>=DiasMes04){mes=5;restodiasmes=DiasMes05-restodiasaño}
if (restodiasaño>=DiasMes05){mes=6;restodiasmes=DiasMes06-restodiasaño}
if (restodiasaño>=DiasMes06){mes=7;restodiasmes=DiasMes07-restodiasaño}
if (restodiasaño>=DiasMes07){mes=8;restodiasmes=DiasMes08-restodiasaño}
if (restodiasaño>=DiasMes08){mes=9;restodiasmes=DiasMes09-restodiasaño}
if (restodiasaño>=DiasMes09){mes=10;restodiasmes=DiasMes10-restodiasaño}
if (restodiasaño>=DiasMes10){mes=11;restodiasmes=DiasMes11-restodiasaño}
if (restodiasaño>=DiasMes11){mes=12;restodiasmes=DiasMes12-restodiasaño}

#Calculo de la hora, minutos, segundos
segundosxhora=60*60
segundosxmin=60
if (restosegundos>=segundosxhora){horas<-restosegundos%/%segundosxhora;restosegmin<-restosegundos%%segundosxhora
} else{horas=0;restosegmin<-segundosxhora}

if (restosegmin>=segundosxmin){minutos<-restosegmin%/%segundosxmin;restos<-restosegmin%%segundosxmin
}else{minutos=0;restos<-segundosegmin}
writeLines(paste0("Año ", as.character(2018+4*ciclos4anuales+restoaños)))
writeLines(paste0("Mes ", as.character(mes)))
writeLines(paste0("Minutos ", as.character(minutos)))
writeLines(paste0("Segundos ", as.character(restos)))

