# DevSecOps Demo

Repositorio de práctica para un ciclo **DevSecOps** académico con GitHub Actions.

## Fases cubiertas
- **Plan**: `docs/threat_model.md`, `SECURITY.md`
- **Code**: Estándares, SAST con CodeQL
- **Build**: Auditoría de dependencias (pip-audit)
- **Test**: Unit tests + DAST (OWASP ZAP Baseline)
- **Release**: Entornos protegidos y validaciones
- **Deploy**: Docker + Terraform (IaC) con escaneo (Checkov)
- **Operate/Monitor**: Alertas de GitHub Security + issues

## Requisitos
- GitHub (repo público o privado)
- GitHub Actions habilitado
- Docker (para ejecutar ZAP localmente si corres el pipeline en self-hosted)

## Uso rápido
1. Sube este repo a GitHub.
2. Habilita **CodeQL** (Security → Code security → Enable CodeQL).
3. Activa **Dependabot** (archivo `.github/dependabot.yml`).
4. Revisa los workflows en `.github/workflows`.
5. Crea un entorno `staging` si deseas gates en `deploy.yml`.

## Ejecución local
```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
pytest -q
FLASK_ENV=production python src/app.py
```
