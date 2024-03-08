# Scava.sh script to follow the pywal theme for cava!

# The idea of ​​the script:
Through a copy of the theme made by pywal in <i> .cache/wal/colors.css </i> a temporary copy is made in a file called
cores, which will format all .css code to the standard recognized by the cava settings and be saved in the config format.
Finally, the generated config file will be moved to <i> .config/cava/config </i> and remove the temporary color file.

# How do I execute?
Download the shcava.sh file and run it through <i> bash shcava.sh </i> <br>
If you prefer, you can add an alias like <i> bash {script_local}/shcava.sh </i> to make it easier and concatenate with pywal as in the example:
<i>wal -i wallpaper_example && scava

