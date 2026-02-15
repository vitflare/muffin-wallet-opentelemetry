{{/*
Expand the name of the chart.
*/}}
{{- define "muffin-wallet.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "muffin-wallet.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "muffin-wallet.labels" -}}
app: {{ include "muffin-wallet.name" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "muffin-wallet.selectorLabels" -}}
app: {{ include "muffin-wallet.name" . }}
{{- end }}