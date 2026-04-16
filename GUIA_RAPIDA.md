# 🚀 Guía Rápida - Auto-sync Pilos Dogs

## ⚡ Lo más importante (copiar y pegar)

### Opción 1: Script automático (RECOMENDADO)
```powershell
cd "c:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs"
.\auto-sync.ps1
```

### Opción 2: Comandos manuales
```powershell
cd "c:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs"
git add .
git commit -m "actualización"
git push origin main
```

---

## 📋 Qué está automatizado

✅ **Sincronización cada 6 horas automáticamente** (GitHub Actions)
✅ **Validaciones automáticas** de HTML y multimedia
✅ **Backup automático** en la nube
✅ **Logs automáticos** de todos los cambios
✅ **Script local** para sincronización rápida desde Windows

---

## 🔗 Enlaces importantes

- **Repositorio**: https://github.com/xCesar24x/Pilosmenu
- **Acciones/Workflows**: https://github.com/xCesar24x/Pilosmenu/actions
- **Historial de cambios**: https://github.com/xCesar24x/Pilosmenu/commits

---

## 📊 Flujo automático

```
Tu PC
 ↓ (cambios)
./auto-sync.ps1 ← Una línea, eso es todo!
 ↓
GitHub (subido)
 ↓
GitHub Actions (automático)
 ├─ Valida HTML
 ├─ Verifica videos/imágenes
 ├─ Crea logs
 └─ Backup completado ✅
```

---

## 🎯 Ejemplo típico del día

```powershell
# Mañana: Agregaste nuevo video
# Solo ejecuta:
.\auto-sync.ps1

# ¡Listo! Todo se sincronizó automáticamente
```

---

## ❓ Preguntas frecuentes

**¿Cada cuánto se ejecuta la automatización?**
- Manual: Cuando ejecutas `.\auto-sync.ps1`
- Automática: Cada 6 horas por GitHub Actions

**¿Dónde veo los logs?**
- GitHub: https://github.com/xCesar24x/Pilosmenu/actions
- Local: `logs/sync.log`

**¿En qué caso usar -Force?**
```powershell
.\auto-sync.ps1 -Force  # Fuerza el push incluso sin cambios
```

**¿Mensaje personalizado del commit?**
```powershell
.\auto-sync.ps1 -CommitMessage "Agregar pizza especial"
```

---

## 🛠️ Comandos útiles

```powershell
# Ver estado actual
git status

# Ver últimos cambios
git log -5

# Ver diferencias
git diff

# Cancelar commit local (antes de push)
git reset --soft HEAD~1
```

---

**¡Listo! Todo está configurado y automatizado. 🚀**
