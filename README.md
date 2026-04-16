# 🍕 Pilos Dogs Menu

Menú digital interactivo para Pilos Dogs con soporte multimedia y automatización en la nube.

## 📋 Contenido

- **index.html** - Página principal
- **menu.html** - Menú interactivo
- **Imágenes** - Fotos de productos (3quesos.jpeg, logo.jpeg, menu.jpeg, QR.png)
- **Videos** - Demostraciones de productos (.mp4)
- **Automatización** - GitHub Actions y scripts locales

## 🚀 Como usar

### Opción 1: Abrir localmente
1. Abre `index.html` en tu navegador
2. Navega por el menú interactivo
3. Escanea el QR para más información

### Opción 2: Ver en línea
Visita: https://github.com/xCesar24x/Pilosmenu

## 📱 Características

- ✅ Menú responsive y moderno
- ✅ Galería multimedia integrada
- ✅ Código QR para compartir
- ✅ **Sincronización automática con GitHub**
- ✅ Backup automático cada 6 horas
- ✅ CI/CD con GitHub Actions

## 🤖 Automatización

### Sincronización automática

El proyecto está configurado con **GitHub Actions** para:

#### 1. **Sync automático cada 6 horas**
   - Verifica cambios cada 6 horas
   - Registra logs de sincronización
   - Mantiene backup actualizado

#### 2. **Validaciones automáticas**
   - Valida archivos HTML
   - Verifica contenido multimedia
   - Genera reportes

#### 3. **Triggers adicionales**
   - Se ejecuta en cada push a GitHub
   - Se puede disparar manualmente desde GitHub Actions

### Usar desde local

#### Opción A: Script PowerShell (Recomendado para Windows)

```powershell
# Sincronizar con mensaje automático
.\auto-sync.ps1

# Sincronizar con mensaje personalizado
.\auto-sync.ps1 -CommitMessage "Actualizar menú"

# Forzar sincronización incluso sin cambios
.\auto-sync.ps1 -Force

# Ver ayuda
.\auto-sync.ps1 -Help
```

#### Opción B: Comandos Git manuales

```bash
# Ver estado
git status

# Agregar cambios
git add .

# Crear commit
git commit -m "tu mensaje"

# Sincronizar con GitHub
git push origin main
```

## 📊 Flujo de automatización

```
Local Project Changes
         ↓
    git push
         ↓
GitHub Repository
         ↓
GitHub Actions Workflow
    ├── Sync & Backup Job
    │   ├── Verify files
    │   ├── Check multimedia
    │   ├── Create logs
    │   └── Commit logs
    │
    └── Validate HTML Job
        ├── Check HTML files
        ├── Verify structure
        └── Generate reports
         ↓
    Automated Backup Complete ✅
```

## 🔄 Cronograma de automatización

| Evento | Acción | Frecuencia |
|--------|--------|-----------|
| Push manual | Ejecutar validaciones | Inmediata |
| Horario | Sincronizar y respaldar | Cada 6 horas |
| Manual | Disparador manualmente | Bajo demanda |

## 🛠️ Configuración

### Credenciales Git

Ya configuradas globalmente:
- Usuario: xCesar24x
- Email: xCesar24x@github.com

### Token de GitHub (si es necesario)

Para automatización completa, puedes generar un token:
1. GitHub → Settings → Developer settings → Personal access tokens
2. Generar token con permisos de `repo` y `workflow`
3. Usar como contraseña en Git

## 📁 Estructura del proyecto

```
Pilos Dogs/
├── index.html              # Página principal
├── menu.html               # Menú interactivo
├── .github/
│   └── workflows/
│       └── backup.yml      # Automatización GitHub Actions
├── auto-sync.ps1           # Script de sincronización (Windows)
├── README.md               # Este archivo
├── .gitignore              # Archivos a ignorar
├── Imágenes/
│   ├── 3quesos.jpeg
│   ├── logo.jpeg
│   ├── menu.jpeg
│   └── QR.png
└── Videos/
    ├── bomba.mp4
    ├── chalupa.mp4
    ├── generales.mp4
    ├── generales2.mp4
    ├── proceso.mp4
    ├── tresquesos.mp4
    ├── tresquesos2.mp4
    └── tresquesostocineta.mp4
```

## 📊 Monitorear automatización

### En GitHub
1. Ve a https://github.com/xCesar24x/Pilosmenu/actions
2. Ver estado de workflows
3. Revisar logs de ejecución

### Localmente
- Revisa `logs/sync.log` (creado automáticamente)

## ⚡ Tips de velocidad

1. Los videos se cacheaban después de la primera carga
2. Las imágenes son optimizadas automáticamente
3. Los backups se ejecutan sin bloquear cambios locales

## 🆘 Solución de problemas

### Error de autenticación en git push
```powershell
# Reintentar con credenciales
git push origin main --force
```

### No hay cambios para sincronizar
```powershell
# Forzar sincronización
.\auto-sync.ps1 -Force
```

### Ver historial de cambios
```powershell
git log --oneline --graph
```

## 📞 Contacto

Para más información sobre la automatización:
- GitHub: https://github.com/xCesar24x
- Repositorio: https://github.com/xCesar24x/Pilosmenu

## 📝 Cambios recientes

✅ Recientemente se han realizado:
- Configuración de GitHub Actions
- Creación de script de auto-sync
- Backup automático cada 6 horas
- Validaciones de contenido multimedia
- Sincronización bidireccional

---

**Última actualización**: $(date)  
**Estado**: ✅ Automatización activa y funcionando

