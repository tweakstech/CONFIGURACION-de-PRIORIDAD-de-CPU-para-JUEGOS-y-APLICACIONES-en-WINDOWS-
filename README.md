# CONFIGURACIÓN de PRIORIDAD de CPU para JUEGOS y APLICACIONES en WINDOWS 🎮💻

- La prioridad de gráficos en sistemas operativos, como Windows, se refiere a la capacidad del sistema para asignar recursos de procesamiento gráfico a aplicaciones específicas, como juegos y software de diseño. Esta función es crucial para garantizar un rendimiento óptimo de las aplicaciones que dependen intensamente de los recursos gráficos, proporcionando una experiencia fluida y visualmente atractiva para el usuario.

> [!NOTE]
> Este script de batch está diseñado para configurar la prioridad de CPU de varios juegos o aplicaciones en Windows para mejorar su rendimiento. La configuración establece una prioridad alta permanentemente a los procesos especificados, lo que puede resultar en una ejecución más fluida y rápida de los juegos.

> [!TIP]
> Al ejecutar este script, asegúrate de hacerlo con privilegios de administrador para que los cambios en la configuración de prioridad sean efectivos. Simplemente sigue las instrucciones en pantalla para seleccionar juegos de una lista o agregar nuevos, asegurándote de escribir correctamente el nombre del ejecutable del juego.

> [!IMPORTANT]
> Es importante revisar la lista de juegos incluidos y verificar que los nombres de los ejecutables sean exactos y coincidan con los archivos correspondientes en tu sistema. Cualquier error en los nombres podría resultar en la configuración incorrecta de prioridad o en la falta de efecto de la optimización.

> [!WARNING]
> Modificar la configuración de prioridad de CPU puede afectar el rendimiento general del sistema operativo y de otras aplicaciones en ejecución. Asegúrate de no configurar demasiados procesos con prioridad alta si no es necesario, ya que podría reducir la capacidad de respuesta del sistema para otras tareas.

> [!CAUTION]
> Usa este script con precaución y comprende los posibles efectos secundarios de modificar la prioridad de los procesos en tu sistema. Si experimentas problemas de estabilidad o rendimiento después de aplicar estos cambios, considera revertirlos o ajustar la configuración según sea necesario.

---

> [!IMPORTANT]
> Para ajustar manualmente la prioridad de CPU desde las configuraciones de Windows:
1. Abre el menú Inicio y selecciona **Configuración**.
2. Navega a **Sistema** y selecciona **Pantalla**.
3. En **Configuración de gráficos**, haz clic en **Examinar**.
4. Selecciona el ejecutable del juego cargado y haz doble clic en él.
5. En las opciones, elige **Alto rendimiento** y guarda los cambios.

---

> [!IMPORTANT]
> Para ajustar manualmente la prioridad de CPU desde Símbolo del sistema:

1. Abre el símbolo del sistema como administrador:
   - En el menú Inicio, escribe **cmd**.
   - Haz clic derecho en **Símbolo del sistema** y selecciona **Ejecutar como administrador**.

2. Copia el comando `reg add` con la ruta específica al registro y los parámetros necesarios. Por ejemplo:

```PowerShell 
reg add **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\NombreDelEjecutable\PerfOptions** /v **CpuPriorityClass** /t REG_DWORD /d 3 /f
```

---

## Licencia

 Este proyecto se encuentra bajo la licencia [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). Consulta el archivo `LICENSE` para más detalles.

© 2024 tweakstech
