# HawaiianPlantPalette
## Description

This is a color palette for native Hawaiian plants! Each plant will have 5 associated colors, which represent various parts of the plant like the flower, leaf, fruit, seed, hairs, etc. 

## Directions
### Downloading the package
To use this palette, download the package from this github using this link:

devtools::install_github("jensen-kl/HawaiianPlantPalette")

Then, simply install the library.

library(HawaiianPlantPalette)

### Functions

This package has two functions:
1. example_plot("PLANTCODE")
   - this gives you an image of the colors associated with each plant.
  
2. plantpalette("PLANTCODE")
   - this produces the color hex codes and which part of the plant they represent.
  
### Accessing the colors

Use the genus-species 6 letter code to access the colors associated with it.

For example, Pōhinahina = Vitex rotundifolia --> VITROT is the six letter code

Plants with subspecies or varieties, use the 9 letter code.

For example, koki‘o ke‘oke‘o = Hibiscus waimeae subsp. hannerae --> HIBWAIHAN is the 9 letter code. 

### Plants included so far: 
* _Cyanea hirtella_ (Hāhā) = CYAHIR
*  _Touchardia latifolia_ (Olonā) = TOULAT
*  _Hibiscus waimeae subsp. hannerae_ (koki‘o ke‘oke‘o) = HIBWAIHAN
*  _Pipturus kauiensis_ (māmaki) = PIPKAU
*  _Kadua acuminata_ (manono) = KADACU
*  _Boehmeria grandis_ (‘akolea) = BOEGRA
*  Psychotria mariniana_ (kōpiko) = PSYMAR
*  _Vitex rotundifolia_ (pōhinahina) = VITROT
*  _Cyrtandra_ (ha‘iwale) = CYRTANDRA

## See the Example_Code for help using this palette. 

## I hope this helps you use the beautiful colors associated with native Hawaiian plants in your next graph! :)
