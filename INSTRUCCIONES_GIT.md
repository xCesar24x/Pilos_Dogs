# 📝 Instrucciones para Sincronizar con GitHub

## ✨ Nueva forma: Script automático (RECOMENDADO)

### Opción 1: Usar el script PowerShell

```powershell
# Navega a la carpeta del proyecto
cd "c:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs"

# Ejecutar el script (con mensaje automático)
.\auto-sync.ps1

# O con message personalizado
.\auto-sync.ps1 -CommitMessage "Actualizar menú de pizzas"

# Ver opciones
.\auto-sync.ps1 -Help
```

**Ventajas:**
✅ Una sola línea de comando
✅ Automático y rápido
✅ Mensajes amigables
✅ Manejo de errores integrado

## 📝 Forma manual: Línea de comandos

### Paso 1: Verificar estado
```powershell
cd "c:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs"
git status
```

### Paso 2: Agregar cambios
```powershell
git add .
```

### Paso 3: Crear commit
```powershell
git commit -m "tu mensaje descriptivo"
```

Ejemplos:
- `git commit -m "Agregar nueva pizza al menú"`
- `git commit -m "Actualizar video de proceso"`
- `git commit -m "Fix: corregir errores en HTML"`

### Paso 4: Sincronizar con GitHub
```powershell
git push origin main
```

## 🤖 Automatización en la nube

Una vez subido, **GitHub Actions** hace automáticamente:

### 1. **Cada 6 horas**
- ✅ Sincroniza cambios
- ✅ Verifica integridad de archivos
- ✅ Valida contenido multimedia
- ✅ Mantiene backup actualizado

### 2. **En cada push**
- ✅ Ejecuta validaciones HTML
- ✅ Verifica multimedia
- ✅ Genera logs
- ✅ Respalda cambios

## 📊 Ver el estado de la automatización

### En GitHub
1. Ve a: https://github.com/xCesar24x/Pilosmenu/actions
2. Ver estado de los últimos workflows
3. Revisar logs de ejecución

### Localmente
```powershell
# Ver historial de commits
git log --oneline

# Ver logs de sincronización
Get-Content logs/sync.log
```

## 🔄 Configuración completada

✅ **Ya configurado:**
- Remote: `https://github.com/xCesar24x/Pilosmenu`
- Branch: `main`
- Usuario: `xCesar24x`
- Email: `xCesar24x@github.com`

✅ **GitHub Actions:**
- `.github/workflows/backup.yml` - Automatización en la nube

✅ **Script local:**
- `auto-sync.ps1` - Sincronización desde Windows

## 🚀 Primer uso

```powershell
# 1. Navega a la carpeta
cd "Proyectos\Pilos Dogs"

# 2. Ejecuta el script (eso es todo!)
.\auto-sync.ps1

# 3. Verifica en GitHub (opcional)
# https://github.com/xCesar24x/Pilosmenu
```

## 💾 Cambios que se sincronizan automáticamente

- 📄 HTML files (index.html, menu.html)
- 🖼️ Imágenes (JPG, PNG)
- 🎬 Videos (MP4)
- 📝 Documentación (MD)
- ⚙️ Configuración

## ⚠️ Lo que NO se sincroniza

- `.DS_Store` - Archivos del sistema
- `node_modules/` - Dependencias
- `*.swp` - Archivos temporales
- `.vscode/` - Configuración local

(Especificado en `.gitignore`)

## 🆘 Solución de problemas

### Error: "fatal: not a git repository"
```powershell
# Asegúrate de estar en la carpeta correcta
cd "c:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs"
git status
```

### Error de autenticación
```powershell
# GitHub pedirá login en el navegador en el primer push
# Solo sigue las instrucciones en pantalla
git push origin main
```

### Ver último commit
```powershell
git log -1
```

### Ver cambios sin subir
```powershell
git status
```

## 📚 Comandos útiles

| Comando | Función |
|---------|---------|
| `git status` | Ver cambios pendientes |
| `git log` | Ver historial |
| `git diff` | Ver diferencias |
| `git add .` | Agregar todo |
| `git commit -m "msg"` | Crear punto de guardado |
| `git push` | Subir a GitHub |

## 🎯 Next steps

1. ✅ Ya configurado y listo
2. 📤 Haz cambios locales
3. 🚀 Usa `.\auto-sync.ps1` para sincronizar
4. 🔍 Verifica en GitHub Actions

---

**Última actualización**: 2026-04-15  
**Estado**: ✅ Sistema automatizado activo
