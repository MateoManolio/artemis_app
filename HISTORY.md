Primer día: Obtención de requerimientos, estructura de la aplicación, tecnologías a utilizar, diseño de UI/UX, incluyendo paleta de colores. Al principio lo hizo todo la IA, pero como hizo demasiado (no solo creó los archivos sino que los completó) lo borré todo y lo hice manualmente
Segundo día: Resolver dependencias. Lo solucioné bajando el _build_runner_ manualmente, después con ayuda de la IA encontramos la versión al borde de que rompa
Tercer día: Se crearon todas las pantallas necesarias en la aplicación. Idea de propia autoría pero ayudado con la IA para acelerar el proceso de codeado, lo que se hizo no es final, quedan un montón de ajustes finos. Pero ya las modificaciones que quedan son pocos
Cuarto día: Se implementó el login con Firebase Authentication, la IA se utilizó para las configuraciones nativas.
Quinto día: Se implementó la conexión a la API, muchos problemas difíciles de solucionar. Mucho tiempo con un provider que no compilaba porque su nombre contenía Autocomplete, después el get_articles_provider dió muchos dolores de cabeza porque no manejaba bien los errores y se reconstruia en vez de pasar su estado, mucho colaboración la ia para solucionar este tema.
Sexto día: Arranqué a la madrugada para terminar de dejar andando freeze, porque no había forma de que me corriera el autogenerado, problema que me llevó muchas horas. Se solucionó cuando dejé de usar la ia y me puse a leer documentación e issues en GitHub manualmente, a la "vieja usanza". Después durante el resto del día me puse a hacer la conexión con el correcto mappeo de la entidad y arreglar varios problemas de caching, sumando el infinite scrolling y el filtrado y la búsqueda. Todo esto lo hice primero con ia pero me generó tanto boilerplate que lo borré todo y lo hice manualmente para que quede un código mucho más pequeño y sencillo.
Séptimo día: Arranqué con problemas en las dependencias, ya que Isar no se actualiza en dos años, leyendo en foros vi que la comunidad hizo un fork, así que instalé ese. Termine haciendo todo el resto sin internet, pero pude completar la base de datos para que agregue una tupla cuando se guarda como favorita o eliminandola si no se desea mas como favorita.
Octavo dia: 


# TODOs
 - [x] Cachear los articles
 - [x] Infinite scrolling
 - [x] Filtrado y búsqueda
    - [x] Debounce para el campo de búsqueda
    - [x] Cancelación de request al cambiar búsqueda
 - [x] Favoritos
 - [ ] Localitation
 - [x] Svgs y logos
 - [x] Articles read
 - [ ] Testing
 - [ ] Github CI/CD
 - [ ] Competar README
 - [ ] Arreglar el color
 - [ ] Poner el ícono a la app
 
 ## Opcionales
 - [x] Random article
 - [ ] Cambiar el usuario
 - [ ] Skeleton loaders
 - [ ] Que el discover no muestre siempre lo mismo
 - [ ] Cambiar la splash screen

 ## Bugs
 - [ ] El no hay artículos al inicio de Article Explorer
 - [ ] Aumento del performance
 - [ ] Search en el menu