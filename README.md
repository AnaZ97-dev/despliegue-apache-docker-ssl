# Despliegue de Servidor Web Apache con Docker y SSL

Proyecto de despliegue y administración de servidores web. Incluye la configuración de Apache dentro de contenedores Docker, implementación de conexiones seguras mediante certificados SSL autofirmados y configuración de VirtualHosts para múltiples dominios.

## 🛠️ Tecnologías y Herramientas
*   **Contenedores:** Docker (Docker Desktop)
*   **Servidor Web:** Apache HTTP Server (`httpd:2.4-alpine`)
*   **Sistema Operativo del contenedor:** Alpine Linux
*   **Seguridad:** OpenSSL (generación de certificados SSL)
*   **Lenguajes de configuración:** Dockerfile, Apache (`httpd.conf`, `httpd-ssl.conf`, `httpd-vhosts.conf`), HTML

## 🎯 Funcionalidades y Conceptos Aplicados

1.  **Despliegue básico con Docker:**
    *   Descarga y ejecución de contenedores Apache.
    *   Mapeo de puertos y modificación de la página por defecto inyectando archivos personalizados mediante `docker cp`.

2.  **Configuración de un entorno seguro (HTTPS):**
    *   Creación de un `Dockerfile` personalizado para incluir OpenSSL y los certificados.
    *   Generación de un certificado SSL autofirmado (`.crt` y `.key`).
    *   Configuración de Apache (`httpd-ssl.conf`) para servir el sitio bajo el protocolo HTTPS en el puerto 443.

3.  **Configuración Avanzada (VirtualHosts):**
    *   Configuración de múltiples sitios web dentro del mismo servidor Apache (`httpd-vhosts.conf`).
    *   **VirtualHost por nombre:** Configuración de dominios basados en el nombre del host (ej. `www.empresa1.local`).
    *   **VirtualHost por IP:** Configuración de dominios basados en direcciones IP específicas.

## 🚀 Cómo ejecutar el proyecto
1. Asegúrate de tener Docker Desktop instalado y en ejecución.
2. **Para el servidor HTTPS:**
    *   Genera los certificados usando el comando con la imagen de Alpine/OpenSSL (documentado en el PDF de la tarea).
    *   Ejecuta el contenedor usando el `Dockerfile.txt` (renómbralo a `Dockerfile`).
    *   Construye la imagen: `docker build -t mi-apache-ssl .`
    *   Arranca el contenedor mapeando los puertos: `docker run -d --name apache-ssl -p 8443:443 mi-apache-ssl`
    *   Accede en el navegador a `https://localhost:8443`.
3. **Para los VirtualHosts:** Ejecuta el contenedor montando los archivos de configuración y los directorios de las empresas, mapeando el puerto 80.
