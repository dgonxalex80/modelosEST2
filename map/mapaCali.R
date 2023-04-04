library(raster)
library(sf)
library(tmap)


cali=shapefile("/home/deg/Documentos/Javeriana/Ms en Ciencia de Datos/repository/modelosEST2/map/cali/cali.shp")
cali.tmap = tm_shape(cali) +  tm_polygons()
cali.tmap  # mapa

qtm(cali) # mapa 2

 oferta=data.frame(lat=c(3.43382,     3.43369,   3.42566,      3.435,   3.45891),
                  long=c(-76.51168, -76.51237, -76.51737,    -76.54,  -76.5135))
 
oferta_sf=st_as_sf(oferta, coords = c('long', 'lat'))
#            , crs = st_crs(cali)$proj4string)


cali2 = tm_shape(cali) +  tm_polygons() + 
        tm_shape(oferta_sf) + tm_dots(size=0.3, col="red")
cali2 

file.choose()

