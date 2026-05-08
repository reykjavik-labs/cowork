# Style Guide — 23people.io Design System para Trust Center

**Fecha:** 2026-05-07
**Fuente:** Extraído de `https://23people.io/assets/index-DAI7VSXI.css`

---

## 1. Filosofía Visual

El sitio 23people.io es **exclusivamente dark-mode**. No tiene modo claro. La estética es sofisticada, tecnológica y moderna — un fondo muy oscuro con acentos en magenta/rosa vibrante, efectos 3D sutiles, gradientes y micro-animaciones.

La paleta comunica: innovación tecnológica, precisión, y energía creativa.

---

## 2. Paleta de Colores (CSS Custom Properties)

### Tema base (siempre dark)

```css
:root {
  --background: 222.2 84% 4.9%;       /* #010b19 — Fondo principal (casi negro azulado) */
  --foreground: 210 40% 98%;           /* #f8fafc — Texto principal (casi blanco) */

  --primary: 328 81% 49%;              /* #e11d75 — Magenta/rosa vibrante (brand color) */
  --primary-foreground: 0 0% 100%;     /* #ffffff — Texto sobre brand */
  --primary-glow: 308 66% 55%;         /* Rosa claro para glow effects */

  --secondary: 217.2 32.6% 17.5%;      /* #1e293b — Fondo secundario (slate-800) */
  --secondary-foreground: 210 40% 98%; /* #f8fafc — Texto sobre secundario */

  --muted: 217.2 32.6% 17.5%;          /* #1e293b — Fondos muted */
  --muted-foreground: 215 20.2% 65.1%; /* #94a3b8 — Texto muted (slate-400) */

  --card: 222.2 84% 4.9%;              /* #010b19 — Fondo de cards (mismo que bg) */
  --card-foreground: 210 40% 98%;      /* #f8fafc — Texto en cards */

  --border: 217.2 32.6% 17.5%;         /* #1e293b — Bordes */
  --input: 217.2 32.6% 17.5%;          /* #1e293b — Inputs */
  --ring: 328 87% 49%;                 /* Rosa brillante para focus rings */

  --destructive: 0 62.8% 30.6%;        /* Rojo oscuro para destrucción */
  --destructive-foreground: 210 40% 98%;
}
```

### Colores semánticos (adicionales)

| Propósito | Color | Uso |
|---|---|---|
| **Éxito / Verde** | `#22c55e` (green-400) | Estados completados, badges positivos |
| **Éxito fondo** | `#166534` (green-700) | Background de badges/alertas verdes |
| **Advertencia / Ámbar** | `#f59e0b` (amber-400) | Estados en progreso |
| **Advertencia fondo** | `#d97706` (amber-600) | Background de badges/alertas ámbar |
| **Error / Rojo** | `#ef4444` (red-400) | Estados de error, alertas críticas |
| **Error fondo** | `#dc2626` (red-600) | Background de badges/alertas rojas |
| **Info / Azul** | `#3b82f6` (blue-400) | Información, enlaces |
| **Info fondo** | `#1e3a8a` (blue-900) | Background de bloques info |

### Gradientes

```css
/* Gradiente principal (cyan → indigo → purple) */
--gradient-primary: linear-gradient(to right, #22d3ee, #818cf8, #c084fc);

/* Gradiente para texto */
background: linear-gradient(to right, #22d3ee, #818cf8, #c084fc);
-webkit-background-clip: text;
background-clip: text;
color: transparent;
```

### Sombras

```css
--shadow-card: 0 4px 6px -1px rgba(0, 0, 0, 0.3);
--shadow-elegant: 0 10px 30px -10px rgba(225, 29, 117, 0.3);  /* Pink shadow */
--shadow-glow: 0 0 40px rgba(225, 29, 117, 0.4);              /* Pink glow */
```

---

## 3. Tipografía

### Font Stack

```css
font-family: ui-sans-serif, system-ui, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", Segoe UI Symbol, "Noto Color Emoji";
```

### Escala de tamaños

| Nombre | `font-size` | `line-height` | Uso típico |
|---|---|---|---|
| `xs` | 12px (0.75rem) | 16px (1rem) | Labels, badges pequeños |
| `sm` | 14px (0.875rem) | 20px (1.25rem) | Texto secundario, cards |
| `base` | 16px (1rem) | 24px (1.5rem) | Texto body |
| `lg` | 18px (1.125rem) | 28px (1.75rem) | Texto destacado |
| `xl` | 20px (1.25rem) | 28px (1.75rem) | Subtítulos |
| `2xl` | 24px (1.5rem) | 32px (2rem) | Títulos de sección |
| `3xl` | 30px (1.875rem) | 36px (2.25rem) | Títulos de página |
| `4xl` | 36px (2.25rem) | 40px (2.5rem) | Hero heading |
| `5xl` | 48px (3rem) | 1 | Hero grande |

### Pesos

| Peso | Clase |
|---|---|
| 400 | `font-normal` |
| 500 | `font-medium` |
| 600 | `font-semibold` |
| 700 | `font-bold` |
| 800 | Usado en hero headings |

### Letter spacing

| Clase | Valor | Uso |
|---|---|---|
| `tracking-tight` | -0.025em | Headings |
| `tracking-wide` | 0.025em | Labels |
| `tracking-widest` | 0.1em | Labels uppercase |

---

## 4. Espaciado y Dimensiones

### Border Radius

```css
--radius: 0.5rem;  /* 8px base */
```

| Clase | Valor | Uso típico |
|---|---|---|
| `rounded-sm` | 4px | Elementos pequeños |
| `rounded-md` | 6px | Inputs, botones |
| `rounded-lg` | 8px | Cards, tabs |
| `rounded-xl` | 12px | Cards grandes |
| `rounded-2xl` | 16px | Hero cards, modales |
| `rounded-full` | 9999px | Badges, pills, avatares |

### Escala de espaciado (Tailwind)

`1`=4px, `2`=8px, `3`=12px, `4`=16px, `5`=20px, `6`=24px, `8`=32px, `12`=48px, `16`=64px, `20`=80px, `24`=96px

### Container

```css
.container {
  width: 100%;
  max-width: 1400px;
  margin-inline: auto;
  padding-inline: 2rem;  /* 32px */
}
```

---

## 5. Animaciones

### Transiciones

```css
--transition-smooth: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
```

Duración estándar: `200ms` para micro-interacciones, `300ms` para transiciones de layout.

### Keyframes disponibles

| Animación | Descripción | Duración |
|---|---|---|
| `fade-in` | Fade in + slide up (10px) | 0.6s ease-out |
| `float` | Flotación suave arriba/abajo | 6s infinite |
| `float-reverse` | Flotación inversa con X | 7s infinite |
| `float-slow` | Flotación muy lenta | 8s infinite |
| `pulse` | Opacidad 1→0.5→1 | 2s infinite |
| `pulse-slow` | Pulso con escala | 4s infinite |
| `scale-in` | Scale 0.95→1 + fade | 0.4s ease-out |
| `slide-up` | Slide desde abajo | 0.8s ease-out |
| `spin` | Rotación 360° | 1s linear infinite |
| `spin-slow` | Rotación 3D lenta | 30s linear infinite |
| `rotate-3d` | Rotación 3D completa | 20s linear infinite |

### Patrones de fondo

- **Dot grid** (`bg-dot`): Patrón de puntos sutiles (20px spacing)
- **Subtle pattern** (`bg-subtle-pattern`): Radial gradient de puntos muy tenues
- **Glow orbs**: Gradientes radiales de colores con blur para fondos atmosféricos

---

## 6. Componentes Clave y Patrones

### Hero Section
- Fondo muy oscuro con gradientes radiales de color difuminados (glow orbs)
- Efectos de blur (`blur-3xl` = 64px) en orbes de fondo
- Título grande (4xl-5xl), peso 800, tracking tight
- Posibles gradientes de texto (cyan→indigo→purple) en títulos
- Badges tipo pill con borde semitransparente

### Cards
- Fondo igual al background (`--card: --background`)
- Borde sutil (`--border`)
- Shadow: `--shadow-card`
- Hover: posible glow con `--shadow-elegant` (sombra rosa)

### Botones
- **Primario**: Fondo `--primary` (magenta), texto blanco, hover con glow
- **Secundario**: Fondo `--secondary`, texto `--secondary-foreground`
- **Outline**: Borde `--border`, fondo transparente
- **Ghost**: Sin fondo ni borde, solo texto
- Border radius: `rounded-md` (6px) o `rounded-lg` (8px)
- Transición suave en hover (`--transition-smooth`)

### Tabs
- Fondo del contenedor: `--secondary` / `--muted`
- Tab activo: color `--primary` con indicador inferior
- Tab inactivo: `--muted-foreground`

### Badges / Pills
- `rounded-full`
- Padding pequeño (4-10px)
- Fondo semitransparente del color correspondiente
- Borde sutil del mismo color

### Tablas
- Header con fondo `--secondary`
- Filas con bordes `--border`
- Hover: ligero cambio de fondo
- Texto muted en headers (uppercase, tracking-wide)

---

## 7. Adaptación para Trust Center

### Cambios necesarios desde el prototipo actual

| Elemento | Prototipo actual | → Debe ser |
|---|---|---|
| Fondo general | `var(--gray-50)` = `#f8fafc` (claro) | `#010b19` (oscuro) |
| Texto body | `var(--gray-800)` = `#1e293b` | `#f8fafc` (claro) |
| Color accent | `var(--accent)` = `#2563eb` (azul) | `#e11d75` (magenta/rosa) |
| Hero fondo | Navy gradient (azul) | Dark con glow orbs magenta/cyan |
| Cards fondo | `var(--white)` = `#ffffff` | `#010b19` (mismo que bg) con borde sutil |
| Cards borde | `var(--gray-200)` = `#e2e8f0` | `#1e293b` (slate-800) |
| Cards sombra | `var(--shadow-lg)` | `--shadow-card` + posible glow |
| Tabs fondo | `var(--gray-100)` = `#f1f5f9` | `#1e293b` (slate-800) |
| Tab activo | `var(--navy)` + borde azul | `var(--primary)` magenta + borde magenta |
| Badges | Fondo verde claro + borde verde | Fondo semitransparente + borde sutil |
| Botón primario | Azul `#2563eb` | Magenta `#e11d75` |
| Botón secundario | Outline blanco | Outline con borde `--border` |
| Footer | Borde superior claro, texto muted | Borde `--border`, texto `--muted-foreground` |
| Rich text | `color: var(--gray-700)` | `color: var(--foreground)` / `--muted-foreground` |
| FAQ fondo | `var(--white)` | `--card` |
| FAQ hover | `var(--gray-50)` | Más sutil (slate-800) |
| Tablas header | `var(--gray-100)` | `--secondary` |
| Tablas texto | `var(--gray-700)` | `--foreground` / `--muted-foreground` |

### Lo que SÍ se mantiene del prototipo
- La estructura HTML general (hero → tab shell → pillars → sections → footer)
- El sistema de navegación en 2 niveles (L1 tabs, L2 tabs)
- El FAQ accordion
- La lógica JavaScript de navegación
- El schema markup en el head
- Las media queries responsive
- La estructura del certificado como elemento anclado
