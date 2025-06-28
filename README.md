# RESET-Terminal™

Extensión modular de terminal que permite **reiniciar completamente una sesión de terminal**, sin conservar historial ni variables de entorno temporales, y relanzar la shell desde cero como si fuera una nueva instancia —todo conservando la misma ruta actual.

> **Funciona desde dentro de la terminal, y solo dentro de ella.**

---

## ¿Para qué sirve?

RESET-Terminal™ ha sido diseñada para entornos de desarrollo, especialmente en **Visual Studio Code**, pero también puede utilizarse desde **PowerShell 7** o cualquier terminal compatible que permita ejecución de scripts. 

Permite:

- Borrar la terminal completamente sin dejar trazas de historial
- Reabrir la terminal con la misma shell y directorio de trabajo
- Generar una nueva variable efímera e irrepetible como identificador de sesión
- Aislar temporalmente el entorno de ejecución

---

## Cómo usar

1. Asegúrate de tener habilitado PowerShell 7 (`pwsh`) en tu sistema.
2. Lanza la terminal usando `launch-reset.ps1` (o enlázalo en tu terminal por defecto).
3. Una vez dentro, simplemente ejecuta:

```powershell
RESET
```

Esto cerrará la sesión actual y lanzará una nueva terminal limpia, sin historial ni entorno previo.

---

## Archivos clave

- `launch-reset.ps1`: Script de inicio principal
- `reset-core.psm1`: Módulo con la función `RESET`
- `manifest.txt`: Hashes de verificación de integridad
- `package.json`: Metadatos para posible extensión
- `README.md`: Este archivo
- `icon.ico` y `icon.png`: Iconos de la extensión
- `LICENSE`: Información legal
- `extension.vsixmanifest`: Opcional para uso en Visual Studio

---

## Licencia

Este proyecto está licenciado bajo los términos de una **licencia dual compatible**:

- [Mozilla Public License 2.0 (MPL-2.0)](https://www.mozilla.org/en-US/MPL/2.0/)
- [European Union Public License v1.2 (EUPL-1.2)](https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12)

Puedes elegir cualquiera de estas dos, según tu necesidad o compatibilidad con otros proyectos.

---

Iconos y logos bajo licencia [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)

---

Desarrollado por **AI_Dora_And_MRCI** con apoyo y pruebas de campo de Manuel Rosendo Castro Iglesias.
