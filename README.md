# Assignment: Introduction to R Spatial
## Worth: 40

## Background
Read: https://www.rspatial.org/raster/intr/index.html:
- Introduction to R 
  - Introduction
  - Basic data dypes
  - Basic data structures
  - Indexing
- Spatial data manipulation
- Spatial data analysis

## Software required
- [R](https://www.r-project.org/)
- [RStudio](https://rstudio.com/products/rstudio/download/)

## Deliverables: 
Create a github branch named `r-spatial` with the following files, submitting as a Pull Request to `master`:
- `screencap-lux.png`
- `screencap-precip.png`
- `screencap-precip-interp.png`
- `r-spatial-assignment.R`

### Directions 

#### Deliverable:
Refer to https://www.rspatial.org/raster/spatial/3-vectordata.html#spatialpoints for 1 and 2.

Save your commands in a file named `r-spatial-assignment.R` that can be re-run to recreate the data and plots you will create in this assignment. 

1. Plot the `/external/lux.shp` file and save the screenshot as `screencap-lux.png`

2. Create a random points layer with random precipitation totals in the extents of lux. Plot with symbology in which points
are scaled by the precip total (e.g., `cex=precipvalue_scaled` where `precipvalue_scaled` would be the precipvalue divided by its max value). Take a screenshot and save it as `screencap-precip.png`.

Refer to https://www.rspatial.org/raster/analysis/4-interpolation.html#inverse-distance-weighted for 3.

3. Using the random precip points from 2), create a precipitation surface using the IDW method. Take a screenshot and save it as `screencap-precip-interp.png`.

4. Save your commands in `r-spatial-assignment.R`.
