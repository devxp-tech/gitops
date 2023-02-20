# devxp-app

![Version: 0.1.61](https://img.shields.io/badge/Version-0.1.61-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Helm Charts for default DevXP-Tech Application

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| diegoluisi | contato@diegoluisi.eti.br |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| PeerAuthentication | object | `{"enabled":true}` | PeerAuthentication defines how traffic will be tunneled (or not) to the sidecar. |
| PeerAuthentication.enabled | bool | `true` | enable PeerAuthentication |
| ResourceQuota | object | `{"enabled":true,"resources":{"hard":{"limits.cpu":"2","limits.memory":"2Gi","requests.cpu":"1","requests.memory":"1Gi"}}}` | ResourceQuota provides constraints that limit aggregate resource consumption per namespace |
| ResourceQuota.enabled | bool | `true` | Specifies whether a resource quota should be created |
| ServiceAccount | object | `{"annotations":{},"enabled":true}` | ServiceAccount A service account provides an identity for processes that run in a Pod, about more: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/ |
| ServiceAccount.annotations | object | `{}` | Annotations to add to the service account |
| ServiceAccount.enabled | bool | `true` | Specifies whether a service account should be created |
| affinity | object | `{}` |  |
| argoRollouts | object | `{"enabled":true,"revisionHistoryLimit":5,"strategy":{"dynamicStableScale":true,"steps":[{"setWeight":5},{"pause":{"duration":"10s"}},{"setWeight":20},{"pause":{"duration":"10s"}},{"setWeight":40},{"pause":{"duration":"10s"}},{"setWeight":60},{"pause":{"duration":"10s"}},{"setWeight":80},{"pause":{"duration":"10s"}}]}}` | ResourceQuota provides constraints that limit aggregate resource consumption per namespace |
| argoRollouts.enabled | bool | `true` | Specifies whether a resource quota should be created |
| autoscaling | object | `{"enabled":true,"maxReplicas":4,"minReplicas":2,"targetCPUUtilizationPercentage":70}` | autoscaling is the main object of autoscaling |
| autoscaling.enabled | bool | `true` | enabled is the flag to sinalize this funcionality is enabled |
| autoscaling.maxReplicas | int | `4` | maxReplicas is the number of maximum scaling pods |
| autoscaling.minReplicas | int | `2` | minReplicas is the number of mim pods to be running |
| autoscaling.targetCPUUtilizationPercentage | int | `70` | targetCPUUtilizationPercentage is the percentage of CPU utilization do Scaling |
| cluster | string | `"lgsk8sp1.grupologos.local"` | cluster Set Cluster Name |
| container.port | int | `8080` | port is the port your application runs under |
| env | list | `[]` |  |
| envFrom | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy is the prop to setup the behavior of pull police. options is: IfNotPresent \| allways |
| image.repository | string | `""` | repository: is the registry of your application ex:556684128444.dkr.ecr.us-east-1.amazonaws.com/YOU-APP-ECR-REPO-NAME if empty this helm will auto generate the image using aws.registry/values.name:values.image.tag |
| image.tag | string | `"latest"` | especify the tag of your image to deploy |
| imagePullSecrets.name | string | `"ghcr-secret"` |  |
| ingress | object | `{"enabled":true}` | ingress Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. |
| ingress.enabled | bool | `true` | enable ingress |
| istioInjection | string | `"enabled"` | istioInjection enable istio injection |
| livenessProbe.httpGet.path | string | `"/health-check/liveness"` |  |
| livenessProbe.httpGet.port | int | `8080` |  |
| livenessProbe.initialDelaySeconds | int | `15` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| migration.enabled | bool | `false` | enable liquibase migration |
| name | string | `""` | name is the github repository name of this application deploy |
| network | object | `{"domain":"diegoluisi.eti.br","service":{"port":80}}` | Network |
| network.domain | string | `"diegoluisi.eti.br"` | domain Set Default Domain |
| network.service | object | `{"port":80}` | service An abstract way to expose an application running on a set of Pods as a network service. |
| network.service.port | int | `80` | port is the port your application runs under |
| nodeSelector | object | `{}` |  |
| probe.enabled | bool | `true` |  |
| readinessProbe.httpGet.path | string | `"/health-check/readiness"` |  |
| readinessProbe.httpGet.port | int | `8080` |  |
| readinessProbe.initialDelaySeconds | int | `15` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| resources.limits.cpu | string | `"100m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"50m"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
| sealedSecrets.enabled | bool | `true` |  |
| sealedSecrets.encryptedData | string | `"AgDGBqpFurhI5BktCG/olnD7r2MuhAel/zkL1IL0BxrcaDUmR8JUf3TEkMqKbiRgb9iKYcwX7zVOXI4xDJeiyWyWDbckn8Yc+RBTw7qpKhh3kMUasPVo9blEcrKq4HjSEAEKapegBDT+H1LhjUToDoqwXVmGFEVYpiHtb0OA0OCtUuDZ2dYD4cLpMSVgZ/8hRfilRdD4PqXD+k1NEVZfRgKGl9fV0mazKm9e7w0rRI1brryhWx9+VZcvSi6RLHiELX7VOObxxjQ0W4gCuHKDRztgHoNDR+KVNum6YpVz8vOXQ/XpBxlASundsryNBAVcPwv0HYQDmsNFfMwXaLkLA+Hg6frWXi1CJvSrJc45U8RQ2sAfbCN6QQw1r6O+Lgqc2hmWnx3RzOva6zIq2UqUNRDrKxn99zZUCU4GpmVLFnj08ogq0p86zUXqzA6o1Qz1KRZu2S0QaQQyMquN4vqByXRfbXrgG5rtQRALsRG3o7q7OfOoy1sa1mF6kMyktpbawE7eT0k0FGPdjEtgg5FzLD88pj5OphL1aNTVzgSLVMpT0KY8GHVlB5AlMxz+ilB0bfSs+S5fGsY5u4iOpUAioAQ2lZH/aK8tMMug4pCRsYvDD6AUWlCupzGHhjVNeWDvhGpUG8anpr0htCxqLAGLJaMGV/hcuwbRzdxgKbPjqd/HFpzwi9ZN17IN1vtQhGm3xR781WTBAeLzU7XykzLh8VuUPhS6c8vdNsXXXYubSXrCAddAycXc5YThp/TzfOlPzn/3kkQZZRKUs3Qp393djTaEG75W/CpnQXG4Pnvk9a4swUCm2ZwNYCZdCjBccutcahlKa8mNG4sDeYbpLOG4ZICo2MuKNoJG2DqmemSUGKeThSyhW8v2CjoKqKhGSKbpUjI43c5dK4TueC88DYMZGX2TF5yOtXwmQbjsutAd3n2ELujLpg=="` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.7.0](https://github.com/norwoodj/helm-docs/releases/v1.7.0)
