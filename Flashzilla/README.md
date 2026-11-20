#  Flashzilla

App de tarjetas de estudio (flashcards) hecha con SwiftUI. Muestra una pila de tarjetas con una pregunta; tocas para ver la respuesta y deslizas para descartarla, todo contra un temporizador.

## Funcionalidades

- Pila de tarjetas con efecto apilado.
- Toca una tarjeta para mostrar u ocultar la respuesta.
- Desliza la tarjeta a izquierda o derecha para retirarla (si se arrastra más de 100 puntos); si no, vuelve a su sitio.
- Retroalimentación visual al arrastrar: la tarjeta cambia de opacidad y de color de fondo (verde a la derecha, rojo a la izquierda).
- Temporizador de 100 segundos que se pausa cuando la app deja de estar activa (`scenePhase`) y se detiene al acabar las tarjetas.
- Botón "Start Again" cuando no quedan tarjetas, para reiniciar el tiempo y recargar el mazo.
- Pantalla de edición (hoja modal) para añadir tarjetas nuevas y borrarlas deslizando.
- Persistencia local: las tarjetas se guardan en `UserDefaults` codificadas como JSON (`Codable`) con la clave `"Cards"`.
- Si no hay tarjetas guardadas, se carga un mazo de 10 tarjetas de ejemplo.
- Accesibilidad: con "Diferenciar sin color" activado se muestran iconos de ✗ y ✓ en los laterales de la pantalla.

## Estructura del proyecto

| Archivo | Descripción |
|---|---|
| `FlashzillaApp.swift` | Punto de entrada de la app. |
| `ContentView.swift` | Pantalla principal: pila de tarjetas, temporizador, botón de editar, reinicio y carga de datos. Incluye la extensión `stacked(at:in:)`. |
| `CardView.swift` | Vista de una tarjeta: gesto de arrastre, rotación, opacidad, color y mostrar respuesta. |
| `Card.swift` | Modelo `Card` (`prompt`, `answer`), `Codable`, con una tarjeta de ejemplo. |
| `EditCards.swift` | Hoja para añadir y eliminar tarjetas y guardarlas en `UserDefaults`. |

## Requisitos

- Xcode [versión]
- iOS [versión mínima]
- Imagen llamada `background` en el catálogo de assets (Assets.xcassets).

## Cómo ejecutarlo

1. Clona el repositorio.
2. Abre `Flashzilla.xcodeproj` en Xcode.
3. Elige un simulador o dispositivo y pulsa Run (⌘R).

## Cómo se usa

1. Pulsa el botón `+` (arriba a la derecha) para abrir la pantalla de edición y añade tus propias tarjetas con su pregunta y respuesta.
2. Pulsa "Done" para volver; el mazo se recarga con tus tarjetas.
3. Toca una tarjeta para ver la respuesta y deslízala para

