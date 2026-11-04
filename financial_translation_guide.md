# Guia de Traduccion: Metricas Tecnicas a Impacto Financiero (GRC)

Como analista de ciberseguridad, presentar datos técnicos crudos (ej. puertos abiertos) a la mesa directiva no suele generar el impacto necesario para conseguir presupuesto o aprobación de proyectos. Esta guía metodológica establece cómo estructurar dicha información bajo una perspectiva de costo y exposición financiera corporativa.

## 1. El Factor de Traducción Técnica

| Métrica Técnica Cruda (Ej. Nmap) | Riesgo Operativo Implícito | Impacto Financiero Estimado |
| :--- | :--- | :--- |
| **Puerto 3389 (RDP) expuesto a Internet** | Acceso de administración remota vulnerable a ataques automatizados de fuerza bruta o ransomware. | **Alto:** Pérdida por interrupción de operaciones del servidor ($X,XXX por hora) mas costos de remediación forense. |
| **Puerto 21 (FTP) con autenticación anónima** | Exfiltración de datos confidenciales, propiedad intelectual o datos de clientes (PII). | **Crítico:** Multas regulatorias por brecha de datos (sector financiero/PCI) mas daño reputacional. |
| **Puertos de desarrollo expuestos (ej. 8080)** | Exposición de entornos no protegidos que revelan código fuente o configuraciones defectuosas. | **Medio:** Horas hombre invertidas en contención y reconstrucción de entornos comprometidos. |

## 2. Metodología de Cuantificación del Riesgo Moneda (ALE)

Para sustentar una decisión ante la dirección, se aplica la fórmula del **ALE (Annualized Loss Expectancy - Expectativa de Pérdida Anualizada)**:

$$\text{ALE} = \text{SLE} \times \text{ARO}$$

* **SLE (Single Loss Expectancy):** Cuánto cuesta que el incidente ocurra una sola vez (ej. valor del servidor + costo de recuperación + pérdida de ventas).
* **ARO (Annualized Rate of Occurrence):** Cuántas veces es probable que este ataque ocurra en un año basado en la telemetría (probabilidad del 1 al 8 traducida a frecuencia anual).

### Ejemplo de Presentación Ejecutiva:
* **Reporte Técnico:** "Nmap detectó el puerto 445 (SMB) abierto con vulnerabilidad EternalBlue."
* **Traducción Financiera:** "Identificamos un vector de exposición crítica perimetral con una expectativa de pérdida anualizada (ALE) de $50,000 USD debido a la posible paralización del servicio de facturación automatizado. La implementación del control compensatorio requiere una inversión única de $5,000 USD, mitigando el 90% del riesgo financiero expuesto."
