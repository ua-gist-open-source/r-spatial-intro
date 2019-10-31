library(sp)              
library(raster)
library(gstat)

# Load the sample polygon data
filename <- system.file("external/lux.shp", package="raster")
filename
poly <- shapefile(filename)
plot(poly, axes=T)

# Create an empty raster with the extents of lux
r <- raster(ncol=1000, nrow=1000, xmn=extent(poly)[1], xmx=extent(poly)[2], ymn=extent(poly)[3], ymx=extent(poly)[4])

crdref <- CRS('+proj=longlat +datum=WGS84')

pt_x <- runif(length(poly), extent(s)[1], extent(s)[2])
pt_y <- runif(length(poly), extent(s)[3], extent(s)[4])
pt_z <- runif(length(poly), 0,4)

pts <- data.frame(cbind(pt_x,pt_y, pt_z))
ptsSp <- SpatialPoints(pts, proj4string=crdref)
ptsSpDf <- SpatialPointsDataFrame(cbind(pt_x, pt_y),pts, proj4string = crdref)

plot(ptsSpDf, pch=16, col="blue", add=T, cex=pt_z)

# Build spatial stats model
gs <- gstat(formula=ppt_z~1,location=ptsSpDf)

# Populate raster with IDW interpolation
idw <- interpolate(r, gs)

# Plot it all
plot(idw)
plot(s, axes=T,add=T)
plot(pptSp, pch=16, col="blue", add=T, cex=ppt_z)
