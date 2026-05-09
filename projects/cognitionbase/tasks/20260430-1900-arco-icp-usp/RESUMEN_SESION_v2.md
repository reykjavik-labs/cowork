# Resumen de Sesión — ARCO Legal: ICP y USP (con razonamiento)

_30 de abril de 2026 · CognitionBase / 23People_

---

## Objetivo de la sesión

Madurar la idea de ARCO Legal definiendo dos entregables concretos:

1. **Perfil de Cliente Ideal (ICP)** — Perfil A
2. **Propuesta Única de Valor (USP)** — Perfil A

Se usó como marco el curso de Prospección Digital B2B (MCI Consultores) y como contexto el trabajo de investigación previo de Marcelo Ampuero sobre la Ley 21.719 y el mercado objetivo.

---

## Contexto de entrada

ARCO Legal es una plataforma (SaaS / on-premise) que gestiona el ciclo completo de solicitudes ARCO+ bajo la **Ley 21.719 de Protección de Datos Personales**, vigente desde el **1 de diciembre de 2026**. Las multas van desde 5.000 UTM por incumplimiento puntual hasta 20.000 UTM (~USD 1,4M) o 2–4% de ingresos anuales por incumplimiento sistemático.

Marcelo identificó dos perfiles candidatos a cliente ideal:

- **Perfil A:** Empresas que reportan a burós de crédito (Equifax, TransUnion) — las primeras en verse afectadas según la experiencia de la implementación del GDPR en Europa, dado que sus clientes son masivos y proclives a ejercer derechos ARCO+.
- **Perfil B:** PyMEs proveedoras de grandes empresas — presionadas indirectamente por sus mandantes, que sí están sujetos a multas y pueden exigir cumplimiento como condición para mantener contratos marco.

---

## Decisión 0 — Un solo perfil primero

**Decisión:** Trabajar el Perfil A primero. El Perfil B queda pendiente.

**Razonamiento:** Mezclar dos perfiles en un mismo ICP produce un mensaje diluido que no le habla con precisión a ninguno. Un ICP sólido requiere un cliente primario específico. El Perfil A se priorizó porque el dolor es más agudo, más visible para el decisor, y el segmento es acotado y prospectable con listas concretas — ideal para validar el producto rápido.

---

## Decisión 1 — Segmento industrial

**Decisión:** Foco en **retail con crédito propio y financieras no bancarias**.

**Razonamiento:** "Empresas que reportan a burós de crédito" no es un segmento industrial en sí — es una conducta que comparten tipos de empresa muy distintos (retail, telcos, utilities, bancos, empresas de cobranza). Se descartaron los bancos porque tienen equipos legales propios y el ciclo de venta sería largo. Se descartaron las telcos y utilities porque su relación con los datos de clientes es menos intensiva en crédito. El retail financiero y las financieras no bancarias fueron elegidos porque su modelo de negocio depende directamente de prestar dinero y recuperarlo, lo que hace que la relación con los datos personales de sus clientes sea masiva, crítica y cotidiana. Además, según la experiencia europea con el GDPR, fueron las primeras empresas en recibir solicitudes de derechos de datos a escala.

---

## Decisión 2 — Tamaño de empresa

**Decisión:** **Mediana Empresa según SII** (ingresos entre 15.000 y 60.000 UTM anuales).

**Razonamiento:** Se analizaron los cuatro segmentos del SII. Las microempresas y pequeñas empresas fueron descartadas porque tienen carteras de crédito demasiado pequeñas para generar un volumen de solicitudes ARCO+ que justifique una plataforma. Las grandes empresas (más de 60.000 UTM) tienen capacidad para armar equipos internos o contratar a una big four, tienen ciclos de venta largos y la competencia es mayor. La mediana empresa es el punto dulce: cartera de crédito real (miles de clientes persona natural), sin DPO ni equipo legal especializado, y una multa de 5.000 UTM puede representar entre el 10% y el 40% de sus ingresos anuales — el dolor es proporcionalmente más agudo que en una gran empresa.

---

## Decisión 3 — Cargo del decisor

**Decisión:** **Gerente de Riesgo / Compliance** (donde existe) o **Gerente General** en empresas más pequeñas del segmento.

**Razonamiento:** Se evaluaron cuatro perfiles: Gerente General, Gerente de Operaciones, Gerente de Riesgo/Compliance, y Gerente Legal. El Gerente Legal rara vez tiene presupuesto propio. El Gerente de Operaciones entiende el problema de proceso, pero no habla el lenguaje de multas y regulación. El Gerente de Riesgo/Compliance es el perfil más natural porque ya gestiona el reporte D10 a la CMF, conoce el costo de incumplir con un regulador, y tiene el vocabulario necesario para traducir el problema ARCO+ en términos de riesgo para la empresa. En empresas medianas más pequeñas del segmento, este cargo no existe formalmente y el Gerente General absorbe esa responsabilidad.

---

## Decisión 4 — La hemorragia diferencial del segmento (hallazgo clave)

**Decisión:** Agregar una cuarta hemorragia específica del segmento: **el riesgo de eliminación de datos en burós de crédito**.

**Razonamiento:** El documento de investigación de Marcelo describía las hemorragias genéricas válidas para cualquier empresa bajo la Ley 21.719 (falta de infraestructura, ineficiencia operativa, errores humanos). Pero para las empresas que reportan a burós, existe una hemorragia adicional que es existencial para su modelo de negocio: si un deudor ejerce su derecho ARCO+ (acceso o cancelación) y la empresa no puede responder dentro de los 30 días, ese deudor puede solicitar la eliminación total de sus datos. Para una empresa que usa la publicación en Equifax o el Boletín Comercial como su principal herramienta de cobranza extrajudicial — actuando a los 34 días de mora en promedio — perder ese registro significa perder la palanca de presión más importante. El incumplimiento ARCO+ no solo genera una multa: le quita el arma más valiosa para cobrar. Esta hemorragia se incluyó también en los temores, pero con un ángulo distinto: en hemorragias se describe el riesgo estructural, en temores se describe el miedo a que un deudor lo active deliberadamente para escapar del boletín.

---

## Decisión 5 — El competidor principal

**Decisión:** **Consultoras legales / estudios de abogados** como competidor principal.

**Razonamiento:** La charla MITI identificó tres categorías de herramientas de software existentes: (1) verificación de cumplimiento, (2) sistemas de tickets para solicitudes ARCO, y (3) gestión de consentimientos. Sin embargo, para una mediana empresa chilena, la alternativa más concreta y probable no es una plataforma internacional (OneTrust, TrustArc) — que son soluciones enterprise, en inglés, diseñadas para el GDPR europeo, sobredimensionadas y caras. La alternativa real es contratar a un abogado o consultora para que arme un proceso manual. Ese es el competidor que el decisor evaluará en paralelo a ARCO Legal, y contra quien hay que diferenciarse. Los sistemas de tickets (Categoría 2) son la competencia directa en el mundo del software, pero aún son poco conocidos en el mercado chileno.

---

## Decisión 6 — La promesa central (resolución de tensión clave)

**Decisión:** La promesa de ARCO Legal es **visibilidad y control del proceso**, no garantía de respuesta en plazo.

**Razonamiento:** Se identificó una tensión fundamental: si ARCO Legal prometía "100% de solicitudes respondidas en 30 días", la promesa era deshonesta, porque el cumplimiento del plazo depende de la ejecución interna del equipo del cliente — no de la plataforma. ARCO Legal no puede controlar si el Gerente de Riesgo asigna recursos suficientes o si el equipo recopila los datos a tiempo. Lo que sí puede controlar es que ninguna solicitud se pierda, que siempre haya un responsable asignado, que el estado de cada solicitud sea visible en tiempo real, y que al cierre exista un comprobante auditable. Esta separación es también más honesta para la venta: no se está prometiendo un resultado de negocio que depende de terceros, sino una capacidad de gestión que el cliente controla usando la herramienta. La promesa de automatización (conectores con sistemas internos) se desplazó a la Fase 3 del roadmap, coherente con la estrategia "manual-first" ya definida en el proyecto.

---

## Decisión 7 — Resultado ultra específico de la USP

**Decisión:** Formular el resultado enfatizando la visibilidad del proceso y la consecuencia de negocio específica del segmento.

**Razonamiento:** Se evaluaron tres versiones del resultado. Las primeras versiones fallaban por dos razones: (a) restaban la ley ("30 días corridos") sin agregar valor propio de ARCO Legal, y (b) tenían un tono acusatorio ("por un error de proceso tuyo") que ponía al cliente a la defensiva. La versión final resuelve ambos problemas: el resultado describe lo que ARCO Legal entrega (visibilidad completa, etapa, responsable, tiempo restante, comprobante) y conecta eso con la consecuencia de negocio más relevante para este segmento específico (la eliminación de un deudor del Boletín Comercial), sin acusar ni prometer lo que la plataforma no controla.

> _"Visibilidad completa de cada solicitud ARCO+ — etapa, responsable y tiempo restante — con comprobante de cumplimiento al cierre, para que tu equipo gestione el riesgo antes de que se convierta en multa o en la eliminación de un deudor de tu Boletín Comercial."_

---

## Entregables generados

| Archivo | Descripción |
|---|---|
| `ICP_PerfilA_ARCO_Legal.md` | Perfil de Cliente Ideal completo (8 campos del template MCI) |
| `USP_PerfilA_ARCO_Legal.md` | Propuesta Única de Valor en 3 pasos (template MCI) |
| `RESUMEN_SESION.md` | Resumen ejecutivo de decisiones y pendientes |
| `RESUMEN_SESION_v2.md` | Este archivo — resumen con razonamiento completo |

---

## Pendientes

- [ ] **Perfil B:** ICP y USP para PyMEs proveedoras de grandes empresas (presión desde mandantes con multas).
- [ ] **Modelo de precios:** No definido en esta sesión. Cuando esté claro, puede anclar la USP con un comparativo costo vs. multa mínima (ej. "por menos de lo que cuesta responder mal una sola solicitud").
- [ ] **Validación con clientes reales:** La estrategia manual-first implica probar el flujo con empresas reales antes de invertir en conectores. El ICP y USP son el insumo directo para iniciar esa prospección.
- [ ] **Investigación de plataformas internas del segmento:** Identificar qué sistemas CRM, gestores de cobranza y bases de datos usan las empresas del segmento objetivo, para priorizar el desarrollo de conectores en Fase 3.
