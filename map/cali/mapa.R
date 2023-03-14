require(sp)
require(rgdal)
require(raster)

cali=shapefile("/home/deg/Documentos/Javeriana/Ms en Ciencia de Datos/repository/modelosEST2/map/cali/cali.shp")
plot(cali)

summary(cali)

cali@data$indice=rnorm(22)
spplot(cali[,21])

cali_2=cali[,4]

shp <- rhapefile("/home/deg/Documentos/Javeriana/Ms en Ciencia de Datos/repository/modelosEST2/map/cali/cali.shp")
summary(shp@data)


map <- ggplot() + 
       geom_polygon(data = cali.shp, aes(x = long, y = lat, group = group), colour = "black", fill = NA)
