# PRD — Trust Center 23people.io

**Versión:** 2.0
**Fecha:** 2026-05-07
**Autor:** JC Soto
**Estado:** Borrador para revisión
**Equipo responsable:** Ingeniería

---

## Problem Statement

Equipos de procurement, legal y due diligence de clientes actuales y prospectos enterprise necesitan evidencia verificable del cumplimiento normativo de 23people —seguridad de la información, protección de datos personales y responsabilidad ambiental— para aprobar a la empresa como partner tecnológico. Actualmente, esta información está dispersa o no es fácilmente accesible en un solo lugar, lo que ralentiza los procesos de evaluación, genera fricción comercial y puede provocar que 23people quede descartada en etapas tempranas del filtro de proveedores por no poder demostrar su postura de compliance de forma inmediata y autoservida.

---

## Solution

Una subpágina pública en `23people.io/trustcenter` que funcione como **showcase centralizado de compliance status y documentación verificable**. La página consolida en un solo lugar los tres pilares de confianza de la empresa —certificación ISO/IEC 27001:2022, adecuación a la Ley N° 21.719 de protección de datos personales, y compromiso ambiental bajo SBTi—, permitiendo a cualquier stakeholder encontrar evidencia concreta de por qué puede confiar en 23people como partner tecnológico. La experiencia se organiza mediante un sistema de navegación por tabs en dos niveles, con información crítica siempre visible, diseño responsive, SEO con schema markup estructurado, y analytics para medir interacciones clave.

---

## User Stories

### Visitantes generales (prospectos, clientes, procurement y legal)

1. Como visitante, quiero ver inmediatamente al llegar que 23people cuenta con certificación ISO 27001 vigente, para confiar en su postura de seguridad sin tener que navegar por múltiples páginas.
2. Como visitante, quiero un badge y headline visibles que confirmen la certificación, para tener certeza inmediata del estándar alcanzado.
3. Como visitante, quiero ver estadísticas destacadas de la certificación (estándar, fecha, certificadora, vigencia) en el hero, para obtener un resumen rápido sin leer documentación extensa.
4. Como procurement de un prospecto enterprise, quiero acceder a los datos completos del certificado ISO 27001 (número, fechas de emisión, vigilancia y expiración, organismo certificador), para verificarlos en nuestros procesos internos de due diligence.
5. Como procurement, quiero descargar el archivo PDF del certificado ISO 27001 directamente desde la página, para adjuntarlo a nuestros expedientes de evaluación de proveedores.
6. Como procurement, quiero un enlace externo de verificación pública del certificado en el sitio del organismo certificador (QCC), para validar su autenticidad de forma independiente.
7. Como procurement, quiero conocer el alcance exacto de la certificación (qué servicios y procesos cubre), para determinar si aplica al servicio que estamos evaluando contratar.
8. Como evaluador técnico, quiero entender qué es ISO 27001, qué implica estar certificado y por qué es relevante para mí como cliente, para contextualizar el valor de la certificación en mi decisión.
9. Como evaluador de seguridad, quiero ver la lista de controles de seguridad activos implementados por 23people (los 12 dominios del Anexo A cubiertos), para entender la profundidad del SGSI.
10. Como evaluador de seguridad, quiero visualizar el ciclo PDCA del SGSI (Planificar, Implementar, Verificar, Mejorar), para entender el modelo de gobernanza y mejora continua.
11. Como cliente actual o prospecto, quiero ver el roadmap de iniciativas de seguridad con su estado actual (completado, en curso, próximo), para saber qué mejoras están en camino y cuándo.
12. Como cliente, quiero consultar preguntas frecuentes sobre la certificación ISO 27001 (cómo solicitar copia, cobertura de proyectos, reporte de incidentes, auditorías, etc.), para resolver dudas comunes sin tener que enviar un email.
13. Como oficial de seguridad de un cliente, quiero saber cómo reportar un incidente de seguridad o una vulnerabilidad, para tener un canal claro y directo.
14. Como oficial de cumplimiento, quiero conocer cómo 23people garantiza la seguridad al trabajar con talento externo, para evaluar riesgos en la cadena de suministro.
15. Como responsable de cumplimiento normativo, quiero entender el estado de adecuación de 23people a la Ley N° 21.719 de protección de datos personales, para evaluar el riesgo legal de contratar sus servicios.
16. Como responsable de cumplimiento, quiero ver el contexto legal de la Ley 21.719 (fechas, obligaciones, multas, fiscalizador), para dimensionar la relevancia del cumplimiento.
17. Como responsable de cumplimiento, quiero ver el roadmap de iniciativas de adecuación a la ley con su estado actual, para saber si 23people estará completamente adecuada antes de la vigencia plena (dic 2026).
18. Como responsable de datos personales en una empresa chilena, quiero conocer ARCO Legal —la plataforma SaaS de 23people que automatiza el cumplimiento de la Ley 21.719—, para evaluar si puedo usarla en mi propia organización.
19. Como responsable de sostenibilidad o procurement con criterios ESG, quiero conocer el compromiso climático formal de 23people bajo Science Based Targets initiative (SBTi), para verificar que la empresa se alinea con nuestros requisitos de proveedores sostenibles.
20. Como evaluador ESG, quiero ver el estado de avance de las iniciativas ambientales (compromiso adoptado, política definida, medición de huella, próximos reportes), para entender en qué etapa del proceso se encuentra 23people.
21. Como visitante con dudas generales de seguridad o compliance, quiero un canal de contacto unificado (trust@23people.io), para enviar consultas sin tener que buscar el email correcto.
22. Como visitante de habla inglesa, quiero acceder a una versión en inglés del Trust Center en `/en/trustcenter` con contenido equivalente, para poder evaluar a 23people sin barreras de idioma.
23. Como visitante en dispositivo móvil, quiero que la página sea completamente funcional y navegable, para consultar información de compliance en cualquier momento y lugar.
24. Como visitante que hace clic en "Ver certificación" desde el Hero, quiero que la página me lleve directamente al contenido del Pilar 1 (Seguridad ISO 27001) con el tab activado, para no tener que buscar manualmente.
25. Como usuario avanzado, quiero poder enlazar directamente a un pilar específico mediante la URL (deep linking), para compartir información precisa con colegas.
26. Como equipo de marketing, quiero que se registre un evento de analytics cada vez que un usuario descarga el certificado ISO, para medir el interés y la efectividad de la página.
27. Como equipo de marketing, quiero tener visibilidad de qué tabs y secciones generan más interacción, para priorizar mejoras de contenido.
28. Como equipo de SEO, quiero que la página incluya schema markup estructurado (Organization, Certification, FAQPage) validado, para mejorar la visibilidad en resultados de búsqueda.

---

## Implementation Decisions

### Sistema de navegación — tabs en dos niveles

- **Nivel 1 (tabs de pilares):** Tres tabs horizontales: Seguridad (ISO 27001), Protección de Datos (Ley 21.719), Responsabilidad Ambiental (SBTi). El tab activo por defecto es Seguridad (ISO 27001). Al cambiar de pilar, el contenido interior se reemplaza completamente. El estado del tab activo se refleja en la URL mediante hash o parámetro para permitir deep linking.
- **Nivel 2 (tabs de secciones):** Dentro de cada pilar, las subsecciones se navegan mediante tabs secundarios. La primera sección de cada pilar está activa por defecto.
- **Excepción Pilar 1:** La tarjeta de datos del certificado se muestra siempre visible como elemento anclado al tope del Pilar 1, por encima del sistema de tabs de secciones. El resto de secciones se navegan por tabs secundarios.
- **Comportamiento responsive mobile:** Los tabs de pilares (nivel 1) se convierten en un selector tipo dropdown/select. Los tabs de secciones (nivel 2) se convierten en scroll horizontal de chips.

### CTAs del Hero con activación de tabs

Los CTAs del Hero no usan anclas de página tradicionales. En cambio, hacen scroll hasta el componente de tabs de pilares y activan programáticamente el tab correspondiente. "Ver certificación" activa Pilar 1 (Seguridad). "Consultas de seguridad" usa `mailto:trust@23people.io`.

### Tarjeta siempre visible del certificado (Pilar 1)

Elemento anclado visualmente al tope del contenido del Pilar 1, fuera del sistema de tabs de secciones. Contiene los campos de datos del certificado (empresa, número, fechas, organismo certificador, cuerpo de acreditación), un enlace de verificación pública externa a `qccertification.com/Client.aspx` que abre en pestaña nueva, y un botón de descarga directa del archivo PDF del certificado alojado en los activos del sitio.

### FAQ con acordeón expandible

La sección de FAQ (Pilar 1) se implementa con acordeón. Las 6 preguntas se expanden/colapsan individualmente. Las respuestas deben ser texto plano (compatible con el schema FAQPage).

### Schema markup y SEO

Tres bloques de schema markup en el `<head>`:
- **Organization:** nombre, dirección, email de seguridad, fecha de fundación, número de empleados, cobertura geográfica de 23people SpA.
- **Certification:** `certificationIdentification: QCC/5290/0326`, `validFrom: 2026-03-25`, `validUntil: 2029-03-24`, `issuedBy: Quality Control Certification (QCC)`, vinculado al `@id` de Organization.
- **FAQPage:** las 6 preguntas con respuestas completas en texto plano.

Meta tags: `<title>` y `<meta name="description">` específicos para la página.

Validación obligatoria en Google Rich Results Test antes de publicar. Los tres schemas deben aparecer sin errores.

### Analytics y tracking

Evento obligatorio en GA4 para descarga del certificado:

```
event_name: certificate_download
parameters:
  certificate_type: "ISO_27001_2022"
  certificate_number: "QCC/5290/0326"
```

Eventos recomendados (no bloqueantes para lanzamiento): click en verificación externa, click en CTA de contacto (`mailto:trust@23people.io`), click en "Conocer ARCO Legal", cambio de tab de pilar, cambio de tab de sección.

### Internacionalización

URLs separadas por idioma: `/trustcenter` (ES) y `/en/trustcenter` (EN). Sin toggle de idioma en la misma URL. Los contactos de email de seguridad ISO difieren por idioma: `seguridad@23people.io` (ES) y `security@23people.io` (EN). El email general `trust@23people.io` es el mismo en ambos idiomas. El contenido en inglés es traducción equivalente del español.

### Diseño y rendimiento

La página sigue las líneas de diseño, patrones de layout y paleta de colores del sitio actual de `23people.io`. Debe pasar Core Web Vitals en verde para desktop y móvil. Las imágenes se sirven en formato WebP con lazy loading.

### Contactos por email

Todos los CTAs de contacto usan `mailto:`, sin formularios embebidos:
- Contacto general Trust Center: `trust@23people.io`
- Seguridad ISO (ES): `seguridad@23people.io`
- Seguridad ISO (EN): `security@23people.io`
- ARCO Legal: enlace externo a `https://arco.legal` (`target="_blank"`)

### Módulos a construir/modificar

La implementación se compone de los siguientes módulos, diseñados para ser probables en aislamiento:

1. **TabSystem** — Componente de navegación en dos niveles. Encapsula la lógica de estado activo, sincronización con URL (deep linking), activación programática desde CTAs externos, y adaptación responsive (dropdown en mobile para nivel 1, scroll horizontal de chips para nivel 2). Su interfaz expone: tabs configurables por pilar/sección, callback de cambio, y método para activar tab externamente.

2. **CertificateCard** — Componente de presentación anclado. Renderiza los campos del certificado, botón de descarga de PDF y enlace de verificación externa. Encapsula el evento de analytics `certificate_download` al iniciar la descarga. Su interfaz recibe los datos del certificado como props y expone un callback `onDownload`.

3. **FAQAccordion** — Componente de acordeón expandible. Renderiza una lista de preguntas con toggle individual de expansión. Las respuestas se renderizan como texto plano. Encapsula el markup necesario para el schema FAQPage.

4. **ContentSection** — Renderizador genérico de secciones de contenido. Soporta tipos: texto enriquecido, cards grid (controles de seguridad), tabla de estado/roadmap, visualización de ciclo (PDCA), bloque informativo con CTA externo.

5. **SchemaMarkup** — Módulo de generación de schema markup en el `<head>`. Produce los tres bloques JSON-LD (Organization, Certification, FAQPage) a partir de datos estáticos configurables. Validable de forma aislada con Google Rich Results Test.

6. **AnalyticsTracker** — Módulo de tracking GA4. Encapsula el disparo de eventos (`certificate_download`, clicks en CTAs, cambios de tab) con sus parámetros. Desacoplado de la UI mediante eventos del DOM o callbacks.

7. **InternationalizationRouter** — Módulo de enrutamiento por idioma. Determina la URL correcta (`/trustcenter` vs `/en/trustcenter`), resuelve los emails de contacto según locale, y asegura que el contenido se cargue en el idioma correspondiente.

---

## Testing Decisions

### Qué hace un buen test

- Probar comportamiento externo, no detalles de implementación: verificar que al hacer clic en un tab cambia el contenido visible, que al descargar el certificado se dispara el evento GA4, que la URL se actualiza al cambiar de pilar.
- Usar tests de integración para los flujos de navegación (Hero CTA → activación de tab → contenido correcto).
- Validar el schema markup con Google Rich Results Test como paso de CI/pre-lanzamiento, no solo visualmente.
- Los tests de responsive deben verificar que los componentes se adaptan correctamente en viewports mobile, tablet y desktop.

### Módulos a testear

- **TabSystem:** Tests de cambio de tab, sincronización de URL, activación programática desde CTA externo, y adaptación responsive (dropdown vs chips).
- **CertificateCard:** Test de renderizado de campos, test de evento `certificate_download` al hacer clic en descarga, test de enlace externo con `target="_blank"`.
- **FAQAccordion:** Test de expansión/colapso individual, test de que el contenido es texto plano, test de que el schema FAQPage se genera correctamente.
- **SchemaMarkup:** Validación automatizada contra Google Rich Results Test (o snapshot de los JSON-LD generados).
- **AnalyticsTracker:** Test de que los eventos se despachan con los parámetros correctos en GA4 (o dataLayer en su defecto).

### Prior art

Los tests deben seguir el patrón de la checklist de pre-lanzamiento definida en el PRD original, que ya especifica 16 verificaciones concretas. Estas verificaciones constituyen los criterios de aceptación y deben transformarse en casos de test automatizados donde sea posible (navegación, eventos, schema), y en verificaciones manuales donde no (emails operativos, Core Web Vitals).

---

## Out of Scope

Para la Fase 1 (lanzamiento mayo 2026), queda explícitamente fuera de alcance:

- Sub-procesadores de datos
- Aviso de privacidad y política de tratamiento de datos
- Política de contraseñas
- Política de retención de datos
- BCDR (Business Continuity & Disaster Recovery)
- Métricas de huella de carbono (cuando estén disponibles post medición SBTi)
- Sección de adecuación completa Ley 21.719 (post diciembre 2026)
- Versión detallada en inglés del contenido de Ley 21.719

Estos elementos están planificados para Fase 2 futura y no bloquean el lanzamiento.

---

## Further Notes

### Dependencias bloqueantes para el lanzamiento

Antes de publicar, deben resolverse:
1. Entrega del archivo PDF del certificado ISO/IEC 27001:2022 por parte del equipo 23people a Ingeniería.
2. Confirmación de que `trust@23people.io` y `security@23people.io` están operativos.
3. Obtención del copy completo en inglés si se desea lanzar ambas versiones simultáneamente (la versión EN puede diferirse a una iteración posterior dentro del mismo sprint).
4. Validación de los tres schemas en Google Rich Results Test sin errores.

### Checklist de pre-lanzamiento

- [ ] `trust@23people.io`, `seguridad@23people.io`, y `security@23people.io` reciben emails
- [ ] Enlace de verificación externa (`qccertification.com/Client.aspx`) funcional
- [ ] Descarga del certificado PDF funciona
- [ ] Evento `certificate_download` se dispara en GA4
- [ ] Tres schemas (Organization, Certification, FAQPage) validan sin errores
- [ ] Página accesible en `23people.io/trustcenter` (sin redirects incorrectos)
- [ ] Enlaces externos abren en `target="_blank"`
- [ ] Responsive en móvil, tablet y desktop
- [ ] Core Web Vitals en verde
- [ ] Tabs de pilares y secciones funcionan correctamente
- [ ] Tarjeta del certificado siempre visible en Pilar 1
- [ ] Deep linking por URL funcional para tabs de pilares
- [ ] Comportamiento mobile: dropdown en nivel 1, chips con scroll horizontal en nivel 2
- [ ] CTAs del Hero activan el tab correcto

### Fecha objetivo
- **Mayo 2026:** versión española completa
- **TBD:** versión inglesa (iteración inmediatamente posterior)

### Referencias de contenido

| Sección | Fuente |
|---|---|
| ISO 27001 — copy completo | `Consolidated/Trustcenter/trust-center-copy.md` |
| ISO 27001 — schema markup | `Consolidated/Trustcenter/trust-center.html` |
| SBTi — compromiso | `https://manual.23people.io/sustainability/our-commitment/` |
| ARCO Legal — producto | `https://arco.legal` |
| Ley 21.719 — texto legal | `Ley-21719_13-DIC-2024-2026-04.pdf` |
