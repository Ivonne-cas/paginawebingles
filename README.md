# The Digital Reading Detective Lab (DRDL)

**Grado 8 | Inglés A2 | Recurso Educativo Digital para UNAD / LabiNNOVA**  
Diseñado por **KarolJohana Castellanos Martínez**.

## Archivos

- `index.html`, `styles.css`, `app.js`: sitio web responsive para GitHub Pages.
- `Guiadeestudio.pdf`: guía de estudio en español, comprimida para publicarse en GitHub Pages y mostrarse dentro de The Lab Guide.
- `study-guide.pdf`: quick review in English.
- `supabase-setup.sql`: creación de la tabla de progreso y reglas de privacidad por estudiante.
- `assets/`: ilustraciones originales del laboratorio, la bioluminiscencia y la máquina analítica.
- Dos imágenes de la carpeta se muestran dentro de The Lab Guide y se pueden abrir por separado. La presentación PDF se previsualiza incrustada y tiene un enlace para abrirla en otra pestaña.

## Las cuatro pestañas

1. **Home / Mission Briefing**: narrativa detectivesca, espacios para video/audio, instrucciones accesibles y reflexión inicial. La reflexión se guarda en el navegador del estudiante.
2. **The Lab Guide**: infografía web de skimming, scanning y prediction; mapa mental sobre fuentes confiables; conectores because, however y therefore; flashcards de 10 palabras con pronunciación; guía PDF.
3. **Reading Cases**: dos lecturas A2 de 150-200 palabras, anotación de pistas/idea/conectores, quiz cronometrado, clasificación drag-and-drop y Kahoot sobre bioluminiscencia. Detective Helper ofrece apoyo de vocabulario y preguntas adicionales; se puede vincular un asistente de clase aprobado.
4. **Writing Vault**: reporte de 3-4 oraciones, sentence starters, revisión de conectores, rúbrica analítica y enlaces opcionales a formulario y corrector gramatical.

La interfaz está en inglés sencillo con apoyos e instrucciones breves en español. Los espacios para video y audio grabado quedan vacíos a propósito. El audio de bienvenida usa voz del navegador hasta que se agregue una grabación. El reporte y la reflexión se almacenan localmente en el dispositivo.

## Añadir el video y enlaces cuando estén listos

Ya están conectados en **The Lab Guide** la infografía, el mapa mental y la presentación de Canva; el Kahoot de bioluminiscencia está en **Reading Cases**. Entra a **Settings → Media & Links** para agregar los materiales que faltan:

- video de bienvenida de YouTube;
- audio grabado opcional;
- juego de Fase 2 (Educaplay, Kahoot o Genially);
- juego externo Wordwall / Educaplay;
- asistente de lectura (Diffit, ChatPDF, Poe, MagicSchool u otro aprobado);
- corrector LanguageTool / QuillBot;
- formulario Google Forms / Typeform.

La actividad de clasificación de titulares ya funciona como una alternativa interna mientras se reciben los enlaces. Las tarjetas del glosario usan iconos de muestra y están marcadas para sustituirlos por imágenes. Las imágenes originales del detective, la playa bioluminiscente y la máquina analítica también aparecen en la web y en la guía PDF.

## Activar cuentas y progreso en la nube

GitHub Pages aloja archivos estáticos; para crear usuarios y sincronizar el progreso se necesita un proyecto Supabase.

1. Crea un proyecto en [Supabase](https://supabase.com/).
2. Abre **SQL Editor → New query**, copia `supabase-setup.sql` y ejecuta el script. La tabla activa Row Level Security y cada estudiante solo puede leer o actualizar sus propios registros.
3. Copia el **Project URL** y la **public browser key** (anon / publishable). No uses `service_role` ni claves secretas.
4. En el sitio, abre **Settings → Supabase Setup**, pega la URL y la clave pública y pulsa **Connect project**.
5. Ve a **Account → Create account**. El estudiante registra nombre, correo y contraseña. Si está activo el correo de confirmación, confirma el enlace y luego inicia sesión.
6. En Supabase **Authentication → URL Configuration**, añade la URL publicada de GitHub Pages para Site URL y Redirect URLs, incluida la ruta del repositorio si corresponde.

La URL y clave pública se guardan en el navegador que configura el sitio. En cada dispositivo nuevo, configura esos dos valores una vez y luego inicia sesión para recuperar el progreso sincronizado. Sin Supabase configurado, los casos se pueden practicar y guardar localmente en modo demostración.

## Publicar en GitHub Pages

1. Sube `index.html`, `styles.css`, `app.js`, `Guiadeestudio.pdf`, los recursos PDF y `supabase-setup.sql` a la raíz del repositorio.
2. En GitHub abre **Settings → Pages**.
3. Elige **Deploy from a branch**, rama `main`, carpeta `/ (root)`, y guarda.
4. Abre la URL que entrega GitHub Pages, conecta Supabase y crea una cuenta de estudiante.

## Propósito pedagógico

El laboratorio trabaja comprensión lectora y pensamiento crítico con una progresión visible: anticipar con títulos, leer para captar la idea principal, localizar datos, subrayar pistas y evaluar autoría, fecha, fuente y evidencia. El quiz entrega retroalimentación formativa; el Writing Vault pide sintetizar el argumento y justificar una opinión con conectores. Los textos son adaptaciones didácticas ficticias preparadas para lectura A2.
