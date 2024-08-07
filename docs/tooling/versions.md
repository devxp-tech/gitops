# 🔩 Tooling

|  App |  Chart | Version | Repo | base | ops | dev | prd |
| :--: | :-----:| :-----: | :---:| :--: | :-: | :-: | :-: |
| argo-rollouts | argo-rollouts | 2.35.3 | https://argoproj.github.io/argo-helm | ✅ |  |  |  |
| argo-workflows | argo-workflows | 0.41.11 | https://argoproj.github.io/argo-helm | ✅ |  |  |  |
| atlantis | atlantis | 5.1.3 | https://runatlantis.github.io/helm-charts |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=atlantis-ops&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/atlantis-ops) |  |  |
| aws-load-balancer-controller | aws-load-balancer-controller | 1.8.1 | https://aws.github.io/eks-charts | ✅ |  |  |  |
| backstage | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=backstage-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/backstage-prd) |
| backstage | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=backstage-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/backstage-dev) |  |
| cert-manager | cert-manager | v1.15.2 | https://charts.jetstack.io | ✅ |  |  |  |
| cilium | cilium | 1.15.7 | https://helm.cilium.io | ✅ |  |  |  |
| demo-app | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=demo-app-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/demo-app-prd) |
| demo-app | devxp-app | 0.2.82 | https://devxp-tech.github.io/helm-charts |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=demo-app-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/demo-app-dev) |  |
| dex | dex | 0.17.1 | https://charts.dexidp.io | ✅ |  |  |  |
| external-dns | external-dns | 7.5.5 | https://charts.bitnami.com/bitnami | ✅ |  |  |  |
| grafana | grafana | 8.0.2 | https://grafana.github.io/helm-charts | ✅ |  |  |  |
| homepage | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=homepage-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/homepage-prd) |
| homepage | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=homepage-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/homepage-dev) |  |
| hotrod | devxp-app | 0.2.82 | https://devxp-tech.github.io/helm-charts | ✅ |  |  |  |
| istio | base | 1.21.5 | https://istio-release.storage.googleapis.com/charts | ✅ |  |  |  |
| istio-ingress | gateway | 1.21.5 | https://istio-release.storage.googleapis.com/charts | ✅ |  |  |  |
| jaeger | jaeger | 2.1.0 | https://jaegertracing.github.io/helm-charts | ✅ |  |  |  |
| karpenter | karpenter | 0.36.2 | oci://public.ecr.aws/karpenter | ✅ |  |  |  |
| keycloak | keycloak | 18.4.4 | https://codecentric.github.io/helm-charts | ✅ |  |  |  |
| kiali-operator | kiali-operator | 1.84.0 | https://kiali.org/helm-charts | ✅ |  |  |  |
| kube-downscaler | kube-downscaler | 0.7.4 | https://charts.deliveryhero.io/ | ✅ |  |  |  |
| kube-prometheus-stack | kube-prometheus-stack | 61.7.1 | https://prometheus-community.github.io/helm-charts | ✅ |  |  |  |
| kubeclarity | kubeclarity | v2.23.1 | https://openclarity.github.io/kubeclarity | ✅ |  |  |  |
| kubecost | cost-analyzer | 2.3.3 | https://kubecost.github.io/cost-analyzer | ✅ |  |  |  |
| kyverno | kyverno | 3.2.4 | https://kyverno.github.io/kyverno | ✅ |  |  |  |
| loki | loki | 6.6.6 | https://grafana.github.io/helm-charts |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=loki-ops&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/loki-ops) |  |  |
| metrics-server | metrics-server | 3.12.1 | https://kubernetes-sigs.github.io/metrics-server/ | ✅ |  |  |  |
| mimir | mimir-distributed | 5.4.0 | https://grafana.github.io/helm-charts | ✅ |  |  |  |
| nexus | nexus-repository-manager | 64.2.0 | https://sonatype.github.io/helm3-charts | ✅ |  |  |  |
| opentelemetry-operator | opentelemetry-operator | 0.64.4 | https://open-telemetry.github.io/opentelemetry-helm-charts | ✅ |  |  |  |
| promtail | promtail | 6.16.0 | https://grafana.github.io/helm-charts | ✅ |  |  |  |
| sealed-secrets | sealed-secrets | 2.15.3 | https://bitnami-labs.github.io/sealed-secrets | ✅ |  |  |  |
| sonarqube | sonarqube | 10.6.0+3033 | https://SonarSource.github.io/helm-chart-sonarqube | ✅ |  |  |  |
| template-java | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=template-java-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/template-java-prd) |
| template-java | devxp-app | 0.2.82 | https://devxp-tech.github.io/helm-charts |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=template-java-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/template-java-dev) |  |
| tempo | tempo | 1.10.1 | https://grafana.github.io/helm-charts | ✅ |  |  |  |
| teste-loki | devxp-app | 0.2.81 | https://devxp-tech.github.io/helm-charts |  |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=teste-loki-prd&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/teste-loki-prd) |
| teste-loki | devxp-app | 0.2.82 | https://devxp-tech.github.io/helm-charts |  |  | [![App Status](https://argocd.devxp-tech.io/api/badge?name=teste-loki-dev&revision=true&showAppName=true)](https://argocd.devxp-tech.io/applications/teste-loki-dev) |  |
| wordpress | wordpress | 23.0.1 | https://charts.bitnami.com/bitnami | ✅ |  |  |  |
