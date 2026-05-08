# Instrucciones — Adaptación del Trust Center al Estilo 23people.io

**Fecha:** 2026-05-07
**Objetivo:** Transformar el prototipo actual (`prototype.html`) para que use el design system real de 23people.io (dark mode, magenta accent).

---

## Resumen Ejecutivo

El sitio 23people.io usa un tema **exclusivamente dark** con acento **magenta/rosa** (#e11d75). El prototipo actual usa un tema claro con acento azul. Hay que adaptar completamente el CSS, manteniendo el HTML y JavaScript intactos (solo cambios menores de clases).

---

## Paso 1: Reemplazar el CSS

### Opción A (recomendada) — Usar `theme.css` como base

1. Abrir `prototype.html`
2. Reemplazar **TODO** el bloque `<style>...</style>` (líneas 104-549) con el contenido de `theme.css`
3. Verificar que el HTML siga funcionando

### Opción B — Parchear el CSS existente

Si prefieres modificar el prototipo existente incrementalmente, estos son todos los cambios necesarios:

#### 1. Variables CSS (reemplazar bloque `:root`)

```css
/* ELIMINAR las variables actuales y REEMPLAZAR por: */
:root{
  --primary: 328 81% 49%;          /* Magenta brand */
  --primary-foreground: 0 0% 100%;
  --primary-glow: 308 66% 55%;
  --background: 222.2 84% 4.9%;    /* #010b19 */
  --foreground: 210 40% 98%;       /* #f8fafc */
  --card: 222.2 84% 4.9%;
  --card-foreground: 210 40% 98%;
  --secondary: 217.2 32.6% 17.5%;  /* #1e293b */
  --secondary-foreground: 210 40% 98%;
  --muted: 217.2 32.6% 17.5%;
  --muted-foreground: 215 20.2% 65.1%;
  --border: 217.2 32.6% 17.5%;
  --input: 217.2 32.6% 17.5%;
  --ring: 328 87% 49%;
  /* Colores semanticos resueltos */
  --green: #22c55e;
  --green-dark: #16a34a;
  --green-bg: rgba(22,163,74,.2);
  --green-border: rgba(34,197,94,.3);
  --amber: #f59e0b;
  --amber-bg: rgba(217,119,6,.2);
  --blue-bg: rgba(30,58,138,.3);
  --blue-border: rgba(59,130,246,.3);
  /* Sombras */
  --shadow-sm: 0 1px 2px rgba(0,0,0,.2);
  --shadow: 0 1px 3px rgba(0,0,0,.3),0 1px 2px rgba(0,0,0,.2);
  --shadow-md: 0 4px 6px -1px rgba(0,0,0,.4),0 2px 4px -2px rgba(0,0,0,.3);
  --shadow-lg: 0 10px 15px -3px rgba(0,0,0,.4),0 4px 6px -4px rgba(0,0,0,.3);
  --shadow-elegant: 0 10px 30px -10px rgba(225,29,117,.3);
  /* Layout */
  --radius: 8px;
  --radius-lg: 12px;
  --radius-xl: 16px;
  --transition: 200ms ease;
  --transition-smooth: all .3s cubic-bezier(.4,0,.2,1);
}
```

#### 2. Body

```css
body{
  font-family: ui-sans-serif,system-ui,sans-serif;
  color: hsl(var(--foreground));      /* antes: var(--gray-800) */
  background: hsl(var(--background)); /* antes: var(--gray-50) */
}
```

#### 3. Hero

```css
.hero{
  background: hsl(var(--background)); /* antes: gradient navy */
}
.hero h1{
  /* Añadir gradiente de texto */
  background: linear-gradient(to right, #f8fafc, #94a3b8);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
}
.hero-sub{
  color: hsl(var(--muted-foreground)); /* antes: rgba(255,255,255,.75) */
}
.hero-stat{
  background: hsla(var(--secondary) / .5); /* antes: rgba(255,255,255,.06) */
  border-color: hsla(var(--border) / .5);
  backdrop-filter: blur(8px);
}
.hero-stat:hover{
  border-color: hsla(var(--primary) / .3);
  box-shadow: var(--shadow-elegant);
}
.hero-stat .stat-val{color: hsl(var(--foreground))}
.hero-stat .stat-label{color: hsl(var(--muted-foreground))}
```

#### 4. Botones

```css
.btn-primary{
  background: hsl(var(--primary));    /* antes: var(--accent) azul */
  color: hsl(var(--primary-foreground));
}
.btn-primary:hover{
  background: hsl(328 81% 44%);
  box-shadow: var(--shadow-elegant);
}
.btn-outline{
  color: hsl(var(--foreground));      /* mantener */
  border-color: hsl(var(--border));   /* antes: rgba(255,255,255,.3) */
}
.btn-outline:hover{
  background: hsla(var(--secondary) / .5);
  border-color: hsla(var(--primary) / .4);
}
.btn-green{
  background: var(--green);
  color: #000; /* texto oscuro sobre verde */
}
.btn-green:hover{
  background: var(--green-dark);
  box-shadow: 0 0 20px rgba(34,197,94,.15);
}
```

#### 5. Tab Shell y Tabs

```css
.level1-container{
  background: hsl(var(--card));       /* antes: var(--white) */
  border: 1px solid hsl(var(--border));
}
.l1-tabs{
  background: hsl(var(--secondary));  /* antes: var(--gray-100) */
  border-bottom-color: hsl(var(--border));
}
.l1-tab{
  color: hsl(var(--muted-foreground)); /* antes: var(--gray-500) */
}
.l1-tab:hover{
  color: hsl(var(--foreground));
  background: hsla(var(--secondary) / .5);
}
.l1-tab.active{
  color: hsl(var(--primary));         /* antes: var(--navy) */
  background: hsl(var(--card));
  border-bottom-color: hsl(var(--primary));
}
.l1-dropdown select{
  color: hsl(var(--foreground));
  background: hsl(var(--card));
  border-color: hsl(var(--border));
}
.l2-tab{
  color: hsl(var(--muted-foreground));
}
.l2-tab:hover{color: hsl(var(--foreground))}
.l2-tab.active{
  color: hsl(var(--primary));
  border-bottom-color: hsl(var(--primary));
}
```

#### 6. Cards (controles, PDCA, info)

```css
.control-card{
  background: hsl(var(--card));       /* antes: var(--white) */
  border-color: hsl(var(--border));   /* antes: var(--gray-200) */
}
.control-card:hover{
  border-color: hsla(var(--primary) / .4);
  box-shadow: var(--shadow-elegant);
  transform: translateY(-2px);
}
.control-card h4{color: hsl(var(--foreground))}
.control-card p{color: hsl(var(--muted-foreground))}

.pdca-card{
  background: hsl(var(--card));
  border-color: hsl(var(--border));
}
.pdca-card h4{color: hsl(var(--foreground))}
.pdca-card p{color: hsl(var(--muted-foreground))}

/* PDCA letters mantener colores vibrantes */
.pdca-card:nth-child(1) .pdca-letter{color: hsl(var(--primary))}
.pdca-card:nth-child(2) .pdca-letter{color: var(--green)}
.pdca-card:nth-child(3) .pdca-letter{color: var(--amber)}
.pdca-card:nth-child(4) .pdca-letter{color: #a78bfa}
```

#### 7. Tablas

```css
.data-table thead{background: hsl(var(--secondary))}
.data-table th{
  color: hsl(var(--muted-foreground));
  border-bottom-color: hsl(var(--border));
}
.data-table td{
  border-bottom-color: hsla(var(--border) / .5);
  color: hsl(var(--muted-foreground));
}
.data-table tbody tr:hover{background: hsla(var(--secondary) / .5)}
```

#### 8. FAQ

```css
.faq-item{
  background: hsl(var(--card));
  border-color: hsl(var(--border));
}
.faq-item:hover{border-color: hsla(var(--primary) / .2)}
.faq-q{color: hsl(var(--foreground)); background: transparent}
.faq-q:hover{color: hsl(var(--primary))}
.faq-item.open .faq-q{color: hsl(var(--primary))}
.faq-a p{color: hsl(var(--muted-foreground))}
```

#### 9. Rich text, contact, ARCO, info blocks

```css
.rich-text{color: hsl(var(--muted-foreground))}
.rich-text h3{color: hsl(var(--foreground))}
.contact-block{background: var(--blue-bg); border-color: var(--blue-border)}
.contact-block a{color: hsl(var(--primary))}
.arco-block{
  background: linear-gradient(135deg, var(--blue-bg), hsl(var(--card)));
  border-color: var(--blue-border);
}
.arco-tag{
  background: hsla(var(--primary) / .15);
  color: hsl(var(--primary));
  border: 1px solid hsla(var(--primary) / .25);
}
.info-block{
  background: hsl(var(--card));
  border-color: hsl(var(--border));
}
.info-block h4{color: hsl(var(--foreground))}
.info-block p,.info-block li{color: hsl(var(--muted-foreground))}
```

#### 10. Footer

```css
.page-footer{
  color: hsl(var(--muted-foreground));
  border-top-color: hsl(var(--border));
}
.page-footer a{color: hsl(var(--muted-foreground))}
.page-footer a:hover{color: hsl(var(--primary))}
```

#### 11. Certificate card

```css
.cert-card{
  background: linear-gradient(135deg, var(--green-bg), hsl(var(--card)));
  border-left-color: var(--green);
  position: relative; overflow: hidden;
}
/* Añadir glow decorativo */
.cert-card::after{
  content: '';
  position: absolute; top: 0; right: 0;
  width: 200px; height: 200px;
  background: radial-gradient(circle at top right, rgba(34,197,94,.15), transparent 70%);
  pointer-events: none;
}
.cert-card-title{color: hsl(var(--foreground))}
.cert-field-label{color: hsl(var(--muted-foreground))}
.cert-field-value{color: hsl(var(--foreground))}
```

---

## Paso 2: HTML — Cambios mínimos necesarios

El HTML actual es compatible con el nuevo tema. Solo hay un cambio necesario:

### Botón "Verificar en qccertification.com"

En la línea 607 del prototipo actual:

```html
<!-- ANTES -->
<a href="https://qccertification.com/Client.aspx" class="btn btn-outline" style="color:var(--navy);border-color:var(--gray-300)" ...>

<!-- DESPUÉS -->
<a href="https://qccertification.com/Client.aspx" class="btn btn-outline" ...>
```

Eliminar el `style="color:var(--navy);border-color:var(--gray-300)"` porque ya no aplica en dark mode.

---

## Paso 3: Añadir la clase `dark` al `<html>` (opcional pero recomendado)

Por consistencia con el resto del sitio, añadir clase `dark` al elemento `<html>`:

```html
<html lang="es" class="dark">
```

Esto no afecta si todo el CSS está inline, pero es buena práctica.

---

## Paso 4: Verificación Visual

Después de aplicar los cambios, verificar:

- [ ] El fondo general es oscuro (#010b19)
- [ ] El texto body es claro (#f8fafc)
- [ ] El hero tiene fondo oscuro (no azul navy)
- [ ] Los botones primarios son magenta (#e11d75)
- [ ] El badge "ISO 27001 Certificado" es verde sobre fondo oscuro
- [ ] Las cards tienen borde sutil (no borde gris claro)
- [ ] Los tabs activos usan magenta como indicador
- [ ] El acordeón FAQ funciona con colores dark
- [ ] La tarjeta del certificado tiene el glow verde
- [ ] El footer tiene borde oscuro y texto muted
- [ ] Los estados (✅ Completado, 🔄 En curso, 📋 Próximo) mantienen sus colores semánticos
- [ ] El responsive funciona igual que antes (los cambios son solo de color)

---

## Paso 5: Ajustes finos opcionales

### A. Animaciones sutiles en hero stats

```css
.hero-stat{
  animation: fadeInUp 0.6s ease-out both;
}
.hero-stat:nth-child(2){animation-delay: 0.1s}
.hero-stat:nth-child(3){animation-delay: 0.2s}

@keyframes fadeInUp{
  from{opacity: 0; transform: translateY(20px)}
  to{opacity: 1; transform: translateY(0)}
}
```

### B. Gradiente de texto en el título del hero

```css
.hero h1{
  background: linear-gradient(to right, #f8fafc, #94a3b8);
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
}
```

### C. Glow orbs decorativos en el fondo del hero (ya incluido en theme.css)

---

## Resumen de archivos en esta carpeta

| Archivo | Propósito |
|---|---|
| `prototype.html` | Prototipo original (light mode, blue accent) |
| `theme.css` | CSS completo con el design system de 23people.io |
| `style-guide.md` | Documentación completa de tokens de diseño |
| `instructions.md` | Este archivo — instrucciones de adaptación |
| `PRD.md` | PRD original del Trust Center |

## Siguientes pasos

1. Elegir Opción A (reemplazar CSS completo con `theme.css`) o Opción B (parchear incrementalmente)
2. Aplicar los cambios
3. Abrir `prototype.html` en el navegador
4. Verificar los 12 puntos de la checklist del Paso 4
5. Ajustar cualquier detalle visual fino
