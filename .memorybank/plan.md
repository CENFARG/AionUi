# Plan de Implementación: Grama Context OS (v2.0 - Fork AionUI)

## Arquitectura: Fork Directo de AionUI (Electron)

Se abandona el intento de migración a Tauri v2 debido al alto acoplamiento del backend de AionUI con las APIs de Electron. Se opta por un fork soberano para maximizar la velocidad de entrega del MVP.

### Hitos de Validación (Checklist)

- [ ] **[MVP-01] Identidad Visual Neón:** Sobrescritura de Arco Design y UnoCSS con la estética Grama (Oscuros + Cian/Magenta).
- [ ] **[MVP-02] Orquestación de Sidecar Python:** Integración del motor de Agno como proceso hijo de Electron.
- [ ] **[MVP-03] Inyección de Tools Grama:** Audio-to-Text y Corrector de Contexto integrados en la interfaz de chat.
- [ ] **[MVP-04] Sistema de Seguimiento:** Implementación de la memoria episódica del usuario (Perfilado dinámico).

### Registro de Decisiones (Decision Log)

- **2026-02-11:** Rollback de arquitectura Tauri. El costo de extraer el servidor Express y adaptarlo a Rust superaba los beneficios inmediatos. Se prioriza el "Time to Market" usando Electron como base probada.
