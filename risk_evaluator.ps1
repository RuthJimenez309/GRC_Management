function Invoke-CyberRiskEvaluator {
    [CmdletBinding()]
    param()
    process {
        Write-Host "====================================================="
        Write-Host "    MODULO INTERACTIVO DE EVALUACION DE RIESGOS GRC   "
        Write-Host "====================================================="
        
        $ID = [Guid]::NewGuid().ToString().Substring(0,8).ToUpper()
        $Title = Read-Host "Ingrese el Titulo o Identificador del Riesgo (ej. Puertos Nmap Expuestos)"
        
        [int]$Prob = 0
        while ($Prob -lt 1 -or $Prob -gt 8) {
            $InputProb = Read-Host "Evalue la Probabilidad (Escala del 1 al 8)"
            [int]::TryParse($InputProb, [ref]$Prob) | Out-Null
        }
        
        [int]$Imp = 0
        while ($Imp -lt 1 -or $Imp -gt 8) {
            $InputImp = Read-Host "Evalue el Impacto Financiero/Operativo (Escala del 1 al 8)"
            [int]::TryParse($InputImp, [ref]$Imp) | Out-Null
        }
        
        $RiskScore = $Prob * $Imp
        
        if ($RiskScore -ge 48) { 
            $Criticidad = "Critico"
            $Control = "Implementar de inmediato un Gateway perimetral de Confianza Cero (Zero Trust), aplicar aislamiento de red y programar remediacion tecnica en menos de 24 horas."
        } elseif ($RiskScore -ge 32) { 
            $Criticidad = "Alto"
            $Control = "Desplegar parches virtuales via WAF/IPS y restringir el trafico mediante Listas de Control de Acceso (ACLs) rigidizadas."
        } elseif ($RiskScore -ge 16) { 
            $Criticidad = "Medio"
            $Control = "Establecer alertas de monitoreo continuo en el SIEM y programar revision de endurecimiento (Hardening) en el proximo ciclo de mantenimiento."
        } else { 
            $Criticidad = "Bajo"
            $Control = "Aceptar formalmente el riesgo residual bajo supervision logica y revision semestral de firmas basicas."
        }
        
        Write-Host "-----------------------------------------------------"
        Write-Host "RESULTADO DEL ANALISIS CORPORATIVO:" -ForegroundColor Cyan
        Write-Host "Puntuacion de Riesgo Calculada: $RiskScore"
        Write-Host "Nivel de Criticidad Asignado   : $Criticidad"
        Write-Host "-----------------------------------------------------"
        
        $RiskObject = [PSCustomObject]@{
            "ID_Riesgo"          = $ID
            "Titulo_Riesgo"      = $Title
            "Probabilidad"       = $Prob
            "Impacto"            = $Imp
            "Puntuacion_Riesgo"  = $RiskScore
            "Criticidad"         = $Criticidad
            "Control_Compensatorio" = $Control
            "Fecha_Evaluacion"   = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
        }
        
        $CsvPath = "cyber_risk_register.csv"
        if (-not (Test-Path $CsvPath)) {
            $RiskObject | Export-Csv -Path $CsvPath -NoTypeInformation -Encoding utf8
        } else {
            $RiskObject | Export-Csv -Path $CsvPath -NoTypeInformation -Append -Encoding utf8
        }
        Write-Host "Registro exitoso guardado en la plantilla: $CsvPath" -ForegroundColor Green
    }
}
Invoke-CyberRiskEvaluator
