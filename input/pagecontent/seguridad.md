## 🔐 Autenticación y Autorización

* **Usar OAuth 2.0 y OpenID Connect (OIDC):**
  Implementa flujos de autorización compatibles con SMART on FHIR, como Authorization Code Flow con PKCE.
  
  Se recomienda seguir la documentación de SMART ON FHIR, donde SMART Backend sugiere medidas de seguridad para aplicaciones con transacciones entre sistemas, y donde SMART AppLaunch  sugiere medidas de seguridad para aplicaciones que interactúan directamente con los usuarios.
  Ver más aquí: [`IG Smart-On-FHIR`](https://www.hl7.org/fhir/smart-app-launch/backend-services.html)

Adicionalmente, se puede recomendar:
* **Utilizar Scopes bien definidos:**
  Limita el acceso mediante scopes específicos como `patient/*.read`, `user/Observation.write`, etc.

* **Control de acceso basado en roles (RBAC):**
  Asigna permisos granulares a roles definidos (paciente, proveedor, administrador, etc.).

## 🔎 Registro y Auditoría

* **Auditoría de accesos:**
  Registra quién accede, qué recursos consulta o modifica, y cuándo.

* **Auditoría compatible con FHIR:**
  Usa recursos [`AuditEvent`](https://www.hl7.org/fhir/auditevent.html) para registrar actividades dentro del servidor FHIR.

## 🧱 Validación y Sanitización

* **Validar recursos FHIR entrantes:**
  Asegúrate de que todos los datos entrantes cumplan con los perfiles, constraints y valores esperados.

* **Evita inyecciones (SQL, XPath, etc.):**
  Sanitiza entradas y usa ORMs o bibliotecas seguras para interactuar con bases de datos o expresiones.

## 🔄 Transporte Seguro

* **TLS obligatorio (HTTPS):**
  Requiere HTTPS en todas las comunicaciones. Usa certificados actualizados y configuraciones seguras.

* **Rechazar conexiones inseguras:**
  No aceptar conexiones HTTP o versiones inseguras de TLS (como TLS 1.0 o 1.1).

## 🛑 Protección contra ataques

* **Rate Limiting y Throttling:**
  Limita el número de peticiones por segundo/minuto para prevenir abuso o DoS.

* **Prevención de CSRF y XSS:**
  Usa cabeceras seguras (`Content-Security-Policy`, `X-Frame-Options`, `X-XSS-Protection`).

* **Verificación de integridad y firmas:**
  Para bundles o recursos sensibles, considera verificar firmas digitales o hashes.

## 🔒 Seguridad de Recursos FHIR

* **Filtrado de resultados por contexto del usuario:**
  Aplica filtros para asegurar que un usuario solo vea los recursos permitidos según su rol o contexto.

* **Mascaramiento o supresión de campos sensibles:**
  No todos los usuarios deben ver campos como `identifier`, `contact`, `extension` confidencial, etc.

## 🧪 Pruebas y Revisión

* **Pruebas de penetración (pentesting):**
  Realiza pruebas de seguridad periódicas en tu servidor/interfaz FHIR.

* **Análisis de dependencias y actualizaciones:**
  Mantén librerías y servidores actualizados para mitigar vulnerabilidades conocidas.

## 📦 Buenas prácticas de implementación

* **Versionado de la API:**
  Expón las versiones FHIR en la URL (`/fhir/R4/...`) y controla cambios para evitar breaking changes.

* **Control de origen y CORS:**
  Configura políticas estrictas de CORS si tu FHIR API es accesible desde el navegador.