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


### Example code
Example dataset:

df <- data.frame(
  category = c("A", "B", "C", "D", "E"),
  value = c(5, 3, 6, 2, 7)
)


Extract the colors from palette:

colors <- plantpalette("VITROT")


Create a ggplot bar chart using the VITROT colors:

ggplot(df, aes(x = category, y = value, fill = category)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  scale_fill_manual(values = setNames(colors, df$category)) +  # SetNames assigns the colors to the category (changes the name of a list)
  theme_minimal() +
  labs(title = "Bar Chart with VITROT Palette")



### Example code from palmer penguins package

Choose palette:

colors <- plantpalette("VITROT") 

Create barplot:


ggplot(penguins, aes(x = species, fill = species)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_manual(values = setNames(plantpalette("VITROT"), unique(penguins$species))) +  # Match colors to species
  theme_minimal() +
  labs(
    title = "Distribution of Penguin Species",
    x = "Species",
    y = "Count"
  ) 


If you want to get a specific color, it's a bit more complicated. You need to use the plantpalette() function to get the list of colors then assign it manually.


plantpalette("VITROT")

Extract the VITROT palette:

vitrot_colors <- c(
  flower = "#9A71F3",
  leaf = "#C8DEBA",
  filament = "#A893D4",
  hairs = "#FAFFFB",
  flower2 = "#B98FF1"
)


Add title in flower color of Pōhinahina:

ggplot(penguins, aes(x = species, fill = species)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_manual(values = setNames(plantpalette("VITROT"), unique(penguins$species))) +  # Match colors to species
  theme_minimal() +
  labs(
    title = "Distribution of Penguin Species",
    x = "Species",
    y = "Count"
  ) +
  theme(
    plot.title = element_text(color = vitrot_colors["flower"], size = 16, face = "bold")  # Change title color and style
  )


# I hope this helps you use the beautiful colors associated with native Hawaiian plants in your next graph! :)
