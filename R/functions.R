# Function to retrieve palettes
plantpalette <- function(palette_name) {
  if (!palette_name %in% names(plant_palettes)) {
    stop("Palette not found. Available palettes: ",
         paste(names(plant_palettes), collapse = ", "))
  }
  return(plant_palettes[[palette_name]])
}

# Example plotting function
example_plot <- function(palette_name) {
  colors <- plantpalette(palette_name)
  par(bg = "gray90")  # Set the background to light gray
  barplot(rep(1, length(colors)), col = colors, border = NA, main = palette_name)
}
