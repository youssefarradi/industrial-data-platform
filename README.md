# Industrial Data Platform

Plateforme data de bout en bout pour une usine de câbles : production (MES),
KPI Lean (MLean) et énergie verte (fichiers Controlling ENR), de l'ingestion
jusqu'aux dashboards. Projet personnel, conçu pour être transposé sur GCP.

![Architecture](docs/industrial_data_platform.png)

**Stack :** PostgreSQL · MinIO · Apache Airflow · dbt · Docker · Terraform ·
FastAPI · Metabase · GitHub Actions

## Démarrage

    cp .env.example .env
    make setup

## Avancement
- [x] Phase 0 : environnement et structure
- [ ] Phase 1 : Docker (warehouse + MinIO)
- [ ] Phase 2 : sources simulées (MES, MLean, ENR)
- [ ] Phase 3 : Terraform
- [ ] Phase 4 : jobs d'extraction et d'ingestion
- [ ] Phase 5 : job de chargement
- [ ] Phase 6 : dbt
- [ ] Phase 7 : Airflow
- [ ] Phase 8 : API + dashboards
- [ ] Phase 9 : CI/CD
