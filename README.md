# Documentación XML de Videojuegos

Este repositorio contiene un sistema de documentación para videojuegos basado en XML, diseñado para catalogar información detallada sobre juegos de forma estructurada, estilizada y validable.

## 📋 Descripción

El proyecto consta de tres componentes principales:

- **XML**: Estructura de datos para documentar videojuegos
- **XSL**: Hoja de estilos para visualizar la documentación en formato web
- **XSD**: Esquema para validar la estructura del XML

Esta solución permite crear documentación de videojuegos completa, con secciones para metadatos, características, mecánicas de juego, especificaciones técnicas, medios y actualizaciones.

## 🗂️ Estructura del Repositorio

```
.
├── videogame_doc.xml     # Archivo XML con la estructura de documentación
├── videogame_style.xsl   # Hoja de estilos XSL para transformación a HTML
├── videogame_schema.xsd  # Esquema XSD para validación
└── README.md             # Este archivo
```

## 🚀 Uso

### Visualizar la documentación

Para ver la documentación formateada:

1. Asegúrate de que los tres archivos (XML, XSL, XSD) estén en el mismo directorio
2. Abre el archivo `videogame_doc.xml` en un navegador web que soporte transformaciones XSLT (Chrome, Firefox, etc.)
3. El navegador aplicará automáticamente la hoja de estilos y mostrará la documentación formateada

### Agregar un nuevo juego

Para documentar un nuevo videojuego:

1. Abre el archivo `videogame_doc.xml`
2. Copia la estructura completa de un elemento `<game>` existente
3. Pega la estructura copiada dentro del elemento raíz `<videogame_documentation>`
4. Actualiza todos los datos con la información del nuevo juego
5. Asegúrate de asignar un `id` único al nuevo elemento `<game>`

### Validar el XML

Para validar que el archivo XML cumple con la estructura definida:

1. Utilizando VSCode:
   - Instala la extensión "XML Tools"
   - Abre el archivo XML
   - Usa el comando "XML Tools: Validate XML against XSD Schema"

2. Utilizando herramientas online:
   - Visita un validador XML como [FreeFormatter](https://www.freeformatter.com/xml-validator-xsd.html)
   - Sube los archivos XML y XSD
   - Ejecuta la validación

## 🔍 Estructura de la documentación

Cada juego documentado incluye:

- **Metadatos básicos**: título, plataforma, fecha de lanzamiento, desarrollador, etc.
- **Descripción**: resumen y descripción detallada
- **Características**: lista de características principales
- **Gameplay**:
  - Mecánicas de juego con controles
  - Sistema de progresión
  - Contenido principal y secundario
- **Especificaciones técnicas**: resolución, framerate, tamaño de archivo, etc.
- **Media**: capturas de pantalla y videos
- **Actualizaciones**: historial de versiones con cambios

## 🛠️ Personalización

### Modificar la presentación visual

Para cambiar el aspecto visual de la documentación:

1. Abre el archivo `videogame_style.xsl`
2. Modifica las reglas CSS en la sección `<style>` dentro del `<head>`
3. Ajusta las plantillas XSLT según sea necesario para reorganizar la información

### Extender el esquema

Para ampliar la estructura de documentación:

1. Modifica el archivo `videogame_schema.xsd` para incluir nuevos elementos o atributos
2. Actualiza el archivo `videogame_doc.xml` para implementar los nuevos campos
3. Actualiza la hoja de estilos XSL para mostrar los nuevos elementos

## 🔄 Ejemplo de archivo XML

El repositorio incluye un ejemplo de documentación para el juego "The Legend of Zelda: Breath of the Wild", que sirve como plantilla para agregar nuevos juegos.

## 📊 Ventajas de este enfoque

- **Separación de preocupaciones**: datos (XML), presentación (XSL) y validación (XSD) separados
- **Validación automática**: garantiza consistencia en la documentación
- **Presentación flexible**: permite modificar la visualización sin alterar los datos
- **Extensibilidad**: diseñado para agregar fácilmente nuevos juegos o ampliar la estructura

## 📝 Requisitos

- Editor de texto (recomendado VSCode)
- Navegador web moderno con soporte para XSLT
- Opcionalmente, herramientas de validación XML

## 💡 Contribución

Si deseas contribuir a este proyecto:

1. Haz un fork del repositorio
2. Crea una rama para tu contribución (`git checkout -b feature/nueva-caracteristica`)
3. Realiza tus cambios y haz commit (`git commit -m 'Añadir nueva característica'`)
4. Sube tu rama (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request