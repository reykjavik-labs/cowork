# Fuentes y Brechas Documentales — ICP Perfil A

**ARCO Legal · Retail Financiero / Financieras No Bancarias**
_Abril 2026 · Uso interno CognitionBase / 23People_

---

## Documentos utilizados

| ID | Documento | Descripción |
|---|---|---|
| [F1] | `Ley-21719_13-DIC-2024-2026-04.pdf` | Texto oficial de la Ley 21.719 de Protección de Datos Personales de Chile |
| [F2] | `Proyecto - Arco Legal (v1.3).pdf` | Narrativa estratégica del proyecto ARCO Legal (23People / CognitionBase) |
| [F3] | `20260423 - Charla MITI - Ley de Protección de Datos.pdf` | Presentación sobre la Ley 21.719 realizada en el contexto del MITI |
| [F4] | `descripcion_segmento.pdf` | Definición oficial de segmentos de empresa del SII (Micro, Pequeña, Mediana, Gran Empresa) |
| [F5] | `Gestión y Regulación del Crédito Retail y Financiero no Bancario.pdf` | Investigación sobre el perfil operativo, regulatorio y de cobranza del segmento |
| [F6] | `Perfil Estratégico y Riesgos del Sector Retail Financiero.pdf` | Perfil estratégico del sector: modelo de negocio, hemorragias y metas del segmento |
| [F7] | `Gestión de Cumplimiento ARCO+ para el Retail Financiero.pdf` | Template ICP pre-completado para el segmento, con foco en compliance Ley 21.719 |

---

## Fuentes por campo del ICP

### Segmento industrial de la empresa

| Afirmación | Fuente(s) |
|---|---|
| Retail financiero, casas comerciales y financieras no bancarias como segmento | [F5], [F6], [F7] |
| Empresas emisoras de tarjetas de crédito propias o prepago no bancarias | [F5] |
| Sector regulado por la CMF | [F5], [F6] |

### Qué caracteriza a la empresa

| Afirmación | Fuente(s) |
|---|---|
| Mediana Empresa según SII: ingresos entre 15.000 y 60.000 UTM anuales | [F4] |
| Tratan volumen masivo de datos personales de personas naturales | [F6], [F7] |
| Obligación de reporte semanal de deudores a la CMF (archivo D10) | [F5] |
| Sin DPO ni infraestructura legal interna sofisticada para datos personales | [F7] |
| Datos de clientes dispersos en múltiples plataformas (CRM, cobranza, sociedades relacionadas) | [F5], [F7] |
| Usan el Boletín Comercial como herramienta principal de cobranza extrajudicial | [F5], [F6] |
| Actúan a los 34 días de mora en promedio | [F5], [F6] |

### Cargo del cliente

| Afirmación | Fuente(s) |
|---|---|
| Gerente de Riesgo / Compliance o Gerente General como decision-maker | [F7] |
| Perfil involucrado en compliance, operaciones o tecnología | [F7] |

### Qué caracteriza al cliente

| Afirmación | Fuente(s) |
|---|---|
| Busca prepararse antes del 1 de diciembre de 2026 | [F1], [F2], [F7] |
| Prefiere soluciones concretas (manual-first) sobre herramientas abstractas | [F2], [F7] |
| Ya gestiona reportes regulatorios D10 a la CMF | [F5] |
| Prefiere enfoque validado antes de automatizar integraciones | [F2], [F7] |

### Qué hemorragias sufre

| Afirmación | Fuente(s) |
|---|---|
| Sin canal formal de recepción ni proceso definido para solicitudes ARCO+ | [F2], [F7] |
| Recolección manual de datos dispersos consume horas del equipo | [F2], [F7] |
| Sistema no centralizado genera respuestas incompletas o plazos vencidos | [F2], [F7] |
| Riesgo de eliminación de datos en burós por incumplimiento ARCO+ | ⚠️ Ver brechas |

### Cuáles son sus temores

| Afirmación | Fuente(s) |
|---|---|
| Multas de hasta 20.000 UTM (~USD 1,4M) desde el día 1 de vigencia | [F1], [F2] |
| Incumplimiento sistemático: 2–4% de ingresos anuales | [F1], [F2] |
| Una sola solicitud fuera de plazo: multa de hasta 5.000 UTM | [F1], [F2] |
| Descontrol inicial ante la primera solicitud ARCO+ | [F2], [F7] |
| Perder la palanca de cobranza: deudor exige eliminación del Boletín Comercial | ⚠️ Ver brechas |

### Cuáles son sus metas

| Afirmación | Fuente(s) |
|---|---|
| KPI: 100% solicitudes respondidas dentro del plazo legal de 30 días | [F2], [F7] |
| KPI: >95% solicitudes cerradas sin reclamo posterior | [F2], [F7] |
| KPI: reducción en tiempo promedio de respuesta vs. proceso manual | [F2], [F7] |
| KPI: reducción de horas del equipo en recolección de datos | [F2], [F7] |

---

## Brechas: afirmaciones sin fuente primaria

### ⚠️ Brecha 1 — Mecanismo legal de eliminación del Boletín Comercial por incumplimiento ARCO+

**Afirmación en el ICP:**
> "Un incumplimiento ARCO+ puede resultar en la eliminación de registros de deudores del Boletín Comercial, destruyendo su principal herramienta de cobranza extrajudicial."

**Estado actual:** La afirmación es una deducción lógica a partir del derecho de cancelación/supresión que establece la Ley 21.719, combinada con el conocimiento de que las empresas del segmento reportan a burós. Sin embargo, no se ha identificado el artículo específico de la ley que regula la consecuencia del incumplimiento del derecho de cancelación sobre registros en sistemas de crédito o boletines comerciales.

**Fuente pendiente:**

- Identificar y citar el artículo específico de la **Ley 21.719** [F1] que establece las consecuencias del incumplimiento del derecho de cancelación o supresión, en particular si permite al titular exigir eliminación de sus datos de terceros sistemas (como burós o boletines).
- Alternativamente, confirmar si existe regulación complementaria (CMF u otro ente) que regule el tratamiento de datos en boletines comerciales bajo la nueva ley.

---

### ⚠️ Brecha 2 — Experiencia europea: empresas de burós como primeras afectadas por el GDPR

**Afirmación en el ICP (implícita en la selección del segmento):**
> Las empresas que reportan a burós de crédito fueron las primeras en tener que activar su cumplimiento tras una ley de protección de datos similar, según la experiencia europea.

**Estado actual:** Esta afirmación proviene de la investigación de Marcelo Ampuero mencionada al inicio de la sesión, no de un documento formal disponible en el proyecto.

**Fuente pendiente:**

- Identificar y citar al menos un informe, artículo académico o reporte de industria que documente que las empresas que reportan a burós de crédito fueron las primeras en recibir solicitudes ARCO+ a escala tras la implementación del GDPR en Europa (2018).
- Fuentes sugeridas para buscar: informes de la AEPD (España), CNIL (Francia), o reportes del European Data Protection Board (EDPB) sobre los primeros años de aplicación del GDPR en el sector financiero.
