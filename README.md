# Cyber Risk Management & GRC Framework

## Módulo de Gobernanza, Riesgo y Cumplimiento
Este proyecto implementa una solución interactiva de automatización orientada a la identificación, evaluación cualitativa y tratamiento estratégico de riesgos tecnológicos en entornos corporativos. Permite conectar hallazgos técnicos (como análisis de puertos expuestos) con el impacto operativo y la justificación ejecutiva requerida por la alta dirección.

## Componentes Incluidos
* **risk_evaluator.ps1**: Script interactivo nativo en PowerShell que calcula matrices de riesgo multiplicando factores de Probabilidad (1-8) e Impacto (1-8), asignando niveles de criticidad y recomendando controles compensatorios inmediatos.
* **cyber_risk_register.csv**: Repositorio centralizado estructurado y dinámico que almacena el inventario de riesgos evaluados listo para auditorías de cumplimiento.
* **financial_translation_guide.md**: Guía metodológica para analistas que detalla la conversión de métricas técnicas crudas a términos cuantitativos de pérdida financiera utilizando el modelo ALE (Annualized Loss Expectancy).
* **risk_acceptance_template.md**: Plantilla formal en Markdown para la declaración y firma ejecutiva de aceptación de riesgo residual corporativo bajo estándares ISO 27001 y marcos GRC.
