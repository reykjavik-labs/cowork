# LLM Wiki — Resumen

**Autor:** Andrej Karpathy
**Fuente:** <https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f>

## Intención

El LLM Wiki es un patrón para construir bases de conocimiento personales usando LLMs. La idea central: en lugar de usar RAG (recuperar fragmentos de documentos crudos en cada consulta), el LLM **construye y mantiene incrementalmente un wiki persistente** — una colección estructurada de archivos markdown interconectados que funciona como capa intermedia entre tú y las fuentes originales.

**Diferencia clave:** el wiki es un artefacto persistente y acumulativo. Las referencias cruzadas ya existen. Las contradicciones ya están señaladas. La síntesis ya refleja todo lo que has leído. El wiki se enriquece con cada fuente nueva y cada pregunta que haces.

El humano no escribe el wiki — el LLM hace todo el trabajo pesado: resumir, referenciar, archivar y mantener la consistencia. El humano se encarga de curar fuentes, dirigir el análisis y hacer buenas preguntas.

## Cómo define qué carpetas debe tener el wiki

Define **tres capas** con roles claros:

### 1. Raw sources (`raw/`)

Carpeta de **documentos fuente originales** — artículos, papers, imágenes, datos. Son **inmutables**: el LLM los lee pero nunca los modifica. Son la fuente de verdad.

### 2. The wiki (`wiki/`)

Directorio de archivos markdown **generados por el LLM**. Contiene:

- Páginas de entidades y conceptos
- Resúmenes de fuentes
- Comparaciones, síntesis
- `index.md` — catálogo de todo el wiki (cada página con link, resumen de una línea, metadatos), organizado por categorías
- `log.md` — registro cronológico append-only de ingests, consultas y mantenimientos

El LLM es dueño total de esta capa: crea páginas, las actualiza con nuevas fuentes, mantiene referencias cruzadas y consistencia.

### 3. Schema (`CLAUDE.md` / `AGENTS.md`)

Documento que le dice al LLM **cómo está estructurado el wiki**, convenciones a seguir y workflows para ingestar fuentes, responder consultas o mantener el wiki. Es lo que convierte al LLM en un mantenedor disciplinado. Co-evoluciona contigo según lo que funcione para tu dominio.

### Archivos especiales

- **index.md**: catálogo de contenido (orientado a temas), actualizado en cada ingest. El LLM lo lee primero para encontrar páginas relevantes antes de responder consultas.
- **log.md**: historial cronológico (orientado a tiempo), append-only. Cada entrada con prefijo consistente (ej. `## [2026-04-02] ingest | Article Title`).

El documento es deliberadamente abstracto — no prescribe estructura exacta de directorios ni formatos de página. Cada implementación se adapta al dominio, preferencias y LLM elegido.
