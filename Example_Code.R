## Example code for using the HawaiianPlantPalette

## Libraries
library(ggplot2)
library(palmerpenguins)
library(HawaiianPlantPalette)

## Example dataset:

## Fake data fram
df <- data.frame( category = c("A", "B", "C", "D", "E"),
                  value = c(5, 3, 6, 2, 7) )

## Extract the colors from palette:
colors <- plantpalette("VITROT")

## Create a ggplot bar chart using the VITROT colors:
ggplot(df, aes(x = category, y = value, fill = category)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  scale_fill_manual(values = setNames(colors, df$category)) + # SetNames assigns the colors to the category (changes the name of a list)
  theme_minimal() +
  labs(title = "Bar Chart with VITROT Palette")


## Example code from palmer penguins package

## Choose palette:
colors <- plantpalette("VITROT")

## Create barplot:
ggplot(penguins, aes(x = species, fill = species)) +
    geom_bar(show.legend = FALSE) +
    scale_fill_manual(values = setNames(plantpalette("VITROT"), unique(penguins$species))) + # Matches colors to species
    theme_minimal() +
    labs( title = "Distribution of Penguin Species",
          x = "Species",
          y = "Count" )

## If you want to get a specific color, it's a bit more complicated.
## You need to use the plantpalette() function to get the list of colors then assign it manually.

## Chose palette
plantpalette("VITROT")

## Extract the VITROT palette:
vitrot_colors <- c(
  flower = "#9A71F3",
  leaf = "#C8DEBA",
  filament = "#A893D4",
  hairs = "#FAFFFB",
  flower2 = "#B98FF1" )

## Add title in flower color of Pōhinahina:

ggplot(penguins, aes(x = species, fill = species)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_manual(values = setNames(plantpalette("VITROT"), unique(penguins$species))) + ## Matches colors to species
  theme_minimal() +
  labs( title = "Distribution of Penguin Species",
        x = "Species",
        y = "Count" ) +
  theme( plot.title = element_text(color = vitrot_colors["flower"], size = 16, face = "bold") # Change title color and style )



