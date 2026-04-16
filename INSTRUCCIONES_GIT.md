# 📝 Instrucciones para Sincronizar con GitHub Desktop

## Paso 1: Agregar la carpeta local a GitHub Desktop

1. Abre **GitHub Desktop**
2. Haz clic en **File** → **Add Local Repository**
3. Selecciona la carpeta: `C:\Users\laptop\OneDrive\Desktop\Proyectos\Pilos Dogs`
4. Haz clic en **Add Repository**

## Paso 2: Conectar al repositorio remoto

1. En GitHub Desktop, ve a **Repository** → **Repository Settings**
2. En la pestaña "Remote", configura la URL remota:
   ```
   https://github.com/xCesar24x/Pilosmenu
   ```
3. Haz clic en **Save**

## Paso 3: Sincronizar los archivos (Push)

1. En GitHub Desktop, verás todos los archivos sin seguimiento
2. En el panel izquierdo, escribe un mensaje de commit como:
   ```
   Initial commit: Pilos Dogs Menu Project
   ```
3. Haz clic en **Commit to main** (o master)
4. Haz clic en **Push origin** para subir a GitHub

## Paso 4: La automatización está lista

✅ **GitHub Actions** ahora:
- Sincronizará automáticamente cada 6 horas
- Se ejecutará cada vez que hagas push de cambios
- Mantiene un backup automático en GitHub

---

## Cambios realizados

- ✅ `.gitignore` - Archivos a ignorar
- ✅ `README.md` - Descripción del proyecto
- ✅ `.github/workflows/backup.yml` - Automatización

## Próximos pasos

1. Configura GitHub Desktop según las instrucciones
2. Realiza el primer commit y push
3. Verifica que todo esté en https://github.com/xCesar24x/Pilosmenu

¡Listo! Tu proyecto estará sincronizado y con backup automático.
