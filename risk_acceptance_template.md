# FORMATO OFICIAL DE ACEPTACION DE RIESGO RESIDUAL - GRC CORPORATIVO

## 1. INFORMACION GENERAL DEL HALLAZGO
* **ID del Riesgo:** [Ingresar ID del archivo CSV]
* **Titulo del Riesgo:** [Ej. Puertos de Prueba Nmap Expuestos en Produccion]
* **Fecha de Evaluacion:** [AAAA-MM-DD]
* **Propietario del Riesgo (Risk Owner):** [Nombre del Director de Unidad de Negocio]

## 2. ANALISIS DE EXPOSICION Y MATRIZ GRC
* **Probabilidad Evaluada (1-8):** [Ingresar Valor]
* **Impacto Financiero/Operativo (1-8):** [Ingresar Valor]
* **Puntuacion de Riesgo Calculada:** [Multiplicacion de Probabilidad x Impacto]
* **Nivel de Criticidad Asignado:** [Critico / Alto / Medio / Bajo]

## 3. JUSTIFICACION DE LA ACEPTACION DEL RIESGO
Marque con una [X] la condicion corporativa que sustenta la decision de no aplicar el control compensatorio recomendado de forma inmediata:
- [ ] **Restriccion Presupuestaria:** El costo de implementacion del control supera la Expectativa de Loss Anualizada (ALE).
- [ ] **Restriccion Tecnica / Operativa:** La aplicacion del parche o aislamiento de red genera incompatibilidad critica con el software del negocio.
- [ ] **Bajo Impacto Financiero:** El riesgo residual se encuentra dentro del umbral de apetito de riesgo aprobado por el comite.

### Declaracion Detallada:
[Describir aqui los motivos de negocio o tecnicos por los cuales se posterga o acepta de forma definitiva este vector de amenaza].

## 4. CONTROL COMPENSATORIO PROVISIONAL / MITIGACION RECIZADA
[Indicar las medidas alternativas minimas que tomara el equipo operativo de seguridad (ej. monitoreo de logs incrementado o revision manual semestral) para evitar la explotacion del fallo].

## 5. FIRMAS Y AUTORIZACION EJECUTIVA
Al firmar este documento, la Direccion General o el Comite de Riesgos reconoce la existencia de la debilidad tecnologica y asume formalmente la responsabilidad ante posibles impactos financieros, legales o reputacionales derivados de la explotacion de este riesgo.

____________________________________________
**Firma del Responsable del Negocio (Risk Owner)**
Fecha:

____________________________________________
**Firma del Oficial de Seguridad de la Informacion / CISO**
Fecha:
