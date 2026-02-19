# Lecciones Aprendidas - Proyecto Grama OS

## Arquitectura y Frameworks

1. **La trampa de la elegancia:** Tauri es más ligero, pero intentar forzar un software diseñado para Electron (AionUI) a entrar en Tauri es una "cirugía de corazón abierto" que no vale la pena si el objetivo es funcional.
2. **Soberanía vía Fork:** Al forkear el repo completo, ganamos control total sobre el ciclo de vida del producto sin perder la capacidad de hacer 'cherry-pick' de mejoras del upstream de AionUI.
3. **Interconexión:** Los sidecars en Electron son extremadamente estables y fáciles de configurar mediante `child_process`.
