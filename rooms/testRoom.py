import os
import xml.etree.ElementTree as ET


# ---------------------------------------------------------
# CONFIGURACIÓN
# ---------------------------------------------------------

ARCHIVO_BUSCADO = "rTestBoss.room.gmx"
ARCHIVO_SALIDA = "roomBattle.txt"


# ---------------------------------------------------------
# BUSCAR EL ARCHIVO
# ---------------------------------------------------------

def buscar_archivo(nombre_archivo):
    """
    Busca el archivo desde la carpeta donde se ejecuta
    este programa y también dentro de sus subcarpetas.
    """

    carpeta_actual = os.getcwd()

    for raiz, carpetas, archivos in os.walk(carpeta_actual):
        if nombre_archivo in archivos:
            return os.path.join(raiz, nombre_archivo)

    return None


# ---------------------------------------------------------
# LEER XML
# ---------------------------------------------------------

def cargar_xml(ruta_archivo):
    """
    Carga el archivo GMX como XML.
    """

    try:
        arbol = ET.parse(ruta_archivo)
        return arbol.getroot()

    except ET.ParseError as e:
        print("Error: el archivo no parece ser un XML válido.")
        print(e)
        return None


# ---------------------------------------------------------
# OBTENER INSTANCIAS
# ---------------------------------------------------------

def obtener_instancias(raiz):
    """
    Obtiene las instancias de la sección <instances>.
    """

    instancias = []

    seccion_instances = raiz.find(".//instances")

    if seccion_instances is None:
        print("No se encontró la sección <instances>.")
        return instancias

    for instancia in seccion_instances.findall("instance"):

        obj_name = instancia.get("objName")
        x = instancia.get("x", "0")
        y = instancia.get("y", "0")
        scale_x = instancia.get("scaleX", "1")
        scale_y = instancia.get("scaleY", "1")

        instancias.append({
            "objName": obj_name,
            "x": x,
            "y": y,
            "scaleX": scale_x,
            "scaleY": scale_y
        })

    return instancias


# ---------------------------------------------------------
# OBTENER TILES
# ---------------------------------------------------------

def obtener_tiles(raiz):
    """
    Obtiene los tiles de la sección <tiles>.
    """

    tiles = []

    seccion_tiles = raiz.find(".//tiles")

    if seccion_tiles is None:
        print("No se encontró la sección <tiles>.")
        return tiles

    for tile in seccion_tiles.findall("tile"):

        bg_name = tile.get("bgName")
        x = tile.get("x", "0")
        y = tile.get("y", "0")

        # Tamaño del tile
        w = tile.get("w", "0")
        h = tile.get("h", "0")

        # Offset dentro del background
        xo = tile.get("xo", "0")
        yo = tile.get("yo", "0")

        # Profundidad
        depth = tile.get("depth", "0")

        tiles.append({
            "bgName": bg_name,
            "x": x,
            "y": y,
            "w": w,
            "h": h,
            "xo": xo,
            "yo": yo,
            "depth": depth
        })

    return tiles


# ---------------------------------------------------------
# GENERAR CÓDIGO DE INSTANCIAS
# ---------------------------------------------------------

def generar_instancias_gml(instancias):
    """
    Convierte las instancias obtenidas en código GML.
    """

    codigo = []

    for instancia in instancias:

        obj = instancia["objName"]
        x = instancia["x"]
        y = instancia["y"]
        scale_x = instancia["scaleX"]
        scale_y = instancia["scaleY"]

        codigo.append(
            f"a = instance_create_battle({x}, {y}, {obj});"
        )

        codigo.append(
            f"a.image_xscale = {scale_x};"
        )

        codigo.append(
            f"a.image_yscale = {scale_y};"
        )

        codigo.append("")

    return "\n".join(codigo)


# ---------------------------------------------------------
# GENERAR CÓDIGO DE TILES
# ---------------------------------------------------------

def generar_tiles_gml(tiles):
    """
    Convierte los tiles obtenidos en llamadas a tile_add().
    """

    codigo = []

    for tile in tiles:

        bg_name = tile["bgName"]
        xo = tile["xo"]
        yo = tile["yo"]
        w = tile["w"]
        h = tile["h"]
        x = tile["x"]
        y = tile["y"]
        depth = tile["depth"]

        codigo.append(
            f"tile_add_battle({bg_name}, {xo}, {yo}, {w}, {h}, {x}, {y}, {depth});"
        )

    return "\n".join(codigo)


# ---------------------------------------------------------
# GENERAR TODO EL CÓDIGO
# ---------------------------------------------------------

def generar_codigo(instancias, tiles):
    """
    Genera el archivo GML completo.
    """

    codigo = []

    # -------------------------
    # MUSICA
    # -------------------------
    codigo.append("// Music")
    codigo.append("global.bossMusic[scrGetPlayerID()] = musBossCherry;")
    codigo.append("")

    # -------------------------
    # INSTANCIAS
    # -------------------------

    codigo.append("// Objects")
    codigo.append("var a;")
    codigo.append("")

    codigo.append(generar_instancias_gml(instancias))

    codigo.append("")

    # -------------------------
    # TILES
    # -------------------------

    codigo.append("// Tilesets")
    codigo.append("")

    codigo.append(generar_tiles_gml(tiles))

    return "\n".join(codigo)


# ---------------------------------------------------------
# GUARDAR TXT
# ---------------------------------------------------------

def guardar_txt(codigo, ruta_salida):
    """
    Guarda el código generado en un archivo TXT.
    """

    with open(ruta_salida, "w", encoding="utf-8") as archivo:
        archivo.write(codigo)


# ---------------------------------------------------------
# PROGRAMA PRINCIPAL
# ---------------------------------------------------------

def main():

    print("Buscando:", ARCHIVO_BUSCADO)
    print()

    # Buscar archivo
    ruta_archivo = buscar_archivo(ARCHIVO_BUSCADO)

    if ruta_archivo is None:
        print("No se encontró el archivo.")
        return

    print("Archivo encontrado:")
    print(ruta_archivo)
    print()

    # Cargar XML
    raiz = cargar_xml(ruta_archivo)

    if raiz is None:
        return

    # Obtener información
    instancias = obtener_instancias(raiz)
    tiles = obtener_tiles(raiz)

    print(f"Instancias encontradas: {len(instancias)}")
    print(f"Tiles encontrados:      {len(tiles)}")
    print()

    # Generar código
    codigo_gml = generar_codigo(instancias, tiles)

    # Ruta de salida
    ruta_salida = os.path.join(
        os.getcwd(),
        ARCHIVO_SALIDA
    )

    # Guardar
    guardar_txt(codigo_gml, ruta_salida)

    print("Código generado correctamente.")
    print("Archivo:", ruta_salida)


# ---------------------------------------------------------
# EJECUTAR
# ---------------------------------------------------------

if __name__ == "__main__":
    main()