import skip

# load schematic

schem_list = ['audio.kicad_sc.kicad_sch',
              'fingerprint.kicad_sch',
              'screen.kicad_sch',
              'buttons.kicad_sch',
              'flashlight.kicad_sch',
              'USB-C.kicad_sch',
              'camera.kicad_sch',
              'GSM-GPS.kicad_sch',
              'vibration.kicad_sch',
              'cm5-carrier.kicad_sch',
              # 'power.kicad_sch'
              ]

# import os files = os.listdir("path/files") for i in files: if i.endswith("kicad_sch"): #rest of your code

for schem in schem_list:
    path = f'../{schem}'
    schem = skip.Schematic(path)
    for symbol in schem.symbol:
        symbol.dnp.value = True

    schem.write(path)



