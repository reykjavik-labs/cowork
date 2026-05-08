# Plan: Trust Center HTML Prototype

**File:** `trustcenter-prototype.html` (single, self-contained HTML file)
**Based on PRD:** `PRD.md` — Trust Center 23people.io v2.0

---

## Stack

- **Tailwind CSS** via CDN + inline `tailwind.config`
- **Vanilla JS** — no framework (tab switching, accordion, mobile select, deep linking)
- **Icons**: Inline SVGs
- **Font**: Inter via Google Fonts CDN

## Structure

```
<!DOCTYPE html>
├── <head>
│   ├── Tailwind CSS CDN
│   ├── Custom CSS variables (matches src/index.css palette)
│   ├── Custom animations (fade-in, slide-up, etc.)
│   ├── 3x JSON-LD blocks (Organization, Certification, FAQPage)
│   └── Meta tags (title, description)
├── <body>
│   ├── Navigation bar (replica of existing site)
│   ├── Hero Section
│   │   ├── Shield badge pill
│   │   ├── Gradient title
│   │   ├── Stat cards row (standard, dates, certifier, validity)
│   │   └── 2 CTAs → scroll to Pillar 1 + mailto
│   ├── Pillar Tabs (Level 1)
│   │   ├── Pillar 1: Seguridad ISO 27001
│   │   │   ├── Certificate Card (pinned)
│   │   │   └── Section Tabs (Level 2)
│   │   │       ├── Overview → Controles → PDCA → Roadmap → FAQ
│   │   ├── Pillar 2: Protección de Datos (Ley 21.719)
│   │   │   └── Section Tabs
│   │   │       ├── Contexto Legal → Roadmap → ARCO Legal
│   │   └── Pillar 3: Responsabilidad Ambiental (SBTi)
│   │       └── Section Tabs
│   │           ├── Compromiso → Medición → Próximos Reportes
│   └── Footer (replica)
├── <script>
│   ├── Tab system (L1 + L2, deep linking via hash, Hero CTA activation)
│   ├── Accordion toggle
│   ├── Mobile <select> ↔ tabs sync
│   └── GA4 certificate_download event simulation
```

## Design Tokens

| Token | Value |
|---|---|
| Primary | `#a1218f` / `hsl(328, 81%, 49%)` |
| Background | `#ffffff` (light) / `#0f172a` (dark) |
| Section alt | `#f1f5f9` (light) / `#1e293b` (dark) |
| Gradient title | `from-cyan-600 via-indigo-600 to-purple-600` |
| Border | `#e2e8f0` (light) / `#1e293b` (dark) |
| Muted text | `#64748b` / `#94a3b8` (dark) |
| Card radius | `0.5rem` |
| Font | Inter |

## Key Behaviors

- **Hash-based deep linking**: `#seguridad`, `#datos`, `#ambiental` syncs L1 tab
- **Hero CTA "Ver certificación"**: `scrollIntoView` + activate Pillar 1
- **Hero CTA "Consultas"**: `mailto:trust@23people.io`
- **Mobile L1**: `<select>` dropdown (hidden on desktop)
- **Mobile L2**: horizontal scroll `<div>` with chip-style triggers
- **Certificate download**: placeholder PDF link + GA4 event simulation
- **External links**: `target="_blank" rel="noopener noreferrer"`
- **FAQ**: 6 items, single-expand accordion

## Content (Placeholder)

- Copy from PRD + generic lorem ipsum for sections without full copy
- PDF certificate link: `#` (placeholder)
- External verification link: `https://qccertification.com/Client.aspx`
- ARCO Legal link: `https://arco.legal`
- Email contacts: `trust@23people.io`, `seguridad@23people.io`

## Responsive

| Breakpoint | L1 Tabs | L2 Tabs |
|---|---|---|
| Desktop (`md+`) | Horizontal pill tabs | Horizontal pill tabs |
| Mobile (`<md`) | `<select>` dropdown | Horizontal scroll chips |

Dark mode supported via `class="dark"` toggle on `<html>`.
