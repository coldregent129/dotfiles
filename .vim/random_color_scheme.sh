#!/bin/bash

# Get a list of color scheme files in ~/.vim/colors
color_schemes=(~/.vim/colors/*.vim)

# Select a random color scheme
random_index=$(( RANDOM % ${#color_schemes[@]} ))
random_color_scheme=${color_schemes[$random_index]}

# Extract the color scheme name
color_scheme_name=$(basename "$random_color_scheme" .vim)

# Output the color scheme name
echo $color_scheme_name

