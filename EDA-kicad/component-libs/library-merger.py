# this helper script merges symbol libraries into a single library for simplicity.
# It is needed because all component websites only provide separate libraries
# for each component and Kicad doesn't have an option to import multiple at once
# NOTE: how to use:


# install merge-kicad-sym using pip
# run the program with python

import os
import subprocess

folder_path = "SPIRIT-symbol-libs/"
target_lib = os.path.join(folder_path, "SPIRIT_symbols.kicad_sym")

# List all .kicad_sym files in the folder
lib_files = [f for f in os.listdir(folder_path) if f.endswith(".kicad_sym")]

# Use the first library as the initial target (copy it)
import shutil
shutil.copyfile(os.path.join(folder_path, lib_files[0]), target_lib)

# Merge the rest into the target library
for lib in lib_files[1:]:
    lib_path = os.path.join(folder_path, lib)
    subprocess.run(["merge-kicad-sym", target_lib, lib_path], check=True)

