# Modelo de Amenazas (STRIDE)

**Activo**: API web de demo (Flask)
**Arquitectura**: Cliente → Nginx → App (Flask) → SQLite (demo)

## STRIDE
- **Spoofing**: tokens inseguros, falta de MFA
- **Tampering**: entrada sin sanitizar
- **Repudiation**: logs insuficientes
- **Information Disclosure**: endpoints verbosos
- **Denial of Service**: falta de rate limiting
- **Elevation of Privilege**: rutas admin sin control

## Controles propuestos
- SAST (CodeQL), DAST (OWASP ZAP), IaC Scan (Checkov), Dependabot
- Seguridad en CI/CD: ramas protegidas, firmas, revisiones obligatorias
