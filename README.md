[![main](https://github.com/devxp-tech/gitops/actions/workflows/main.yaml/badge.svg)](https://github.com/devxp-tech/gitops/actions/workflows/main.yaml)
[![Quality Gate Status](https://sonar.devxp-tech.io/api/project_badges/measure?project=gitops&metric=alert_status&token=sqb_f6faa6baaf2901c484b2fc037eb06ad36b704eaa)](https://sonar.devxp-tech.io/dashboard?id=gitops)
[![App Status](https://argocd.devxp-tech.io/api/badge?name=argo-cd&revision=true)](https://argocd.diegoluisi.eti.br/applications/argo-cd)
![GitHub last commit](https://img.shields.io/github/last-commit/devxp-tech/gitops)
![GitHub top language](https://img.shields.io/github/languages/top/devxp-tech/gitops)
![GitHub issues](https://img.shields.io/github/issues-raw/devxp-tech/gitops)
![GitHub](https://img.shields.io/github/license/devxp-tech/gitops)
![Twitter Follow](https://img.shields.io/twitter/follow/devxp_tech?style=social)
# ⚙️ GitOps

GitOps is a set of best practices where the entire code delivery process is controlled via Git, including infrastructure and application definition as code and automation to complete updates and rollbacks.

The core idea of GitOps is to have a git repository that contains declarative descriptions of the desired infrastructure in the production environment and has an automated process to make the production environment match the state described in that repository.

Now that we know the central idea, let's go back a little bit to the acronym GitOps and let's understand the role of git, the role of ops and how they meet.

The Key GitOps Principles:

- The entire system (infrastructure and applications) is described declaratively.
- The canonical desired system state is versioned in Git.
- Changes approved are automated and applied to the system.
- Software agents ensure correctness and alert on divergence.

### <img align="left" alt="Git" width="18px" src="https://cncf-branding.netlify.app/img/projects/argo/icon/color/argo-icon-color.svg" /> [Argo CD Autopilot](https://argocd-autopilot.readthedocs.io/en/stable/)

New users to GitOps and Argo CD are not often sure how they should structure their repos, add applications, promote apps across environments, and manage the Argo CD installation itself using GitOps.

### Example:

```bash
argocd-autopilot app create argo-events --app github.com/argoproj/argo-events/blob/master/manifests/namespace-install.yaml -p ops --wait-timeout 2m
```

### <img align="left" alt="Git" width="18px" src="https://cncf-branding.netlify.app/img/projects/argo/icon/color/argo-icon-color.svg" /> [Argo CD](https://argo-cd.readthedocs.io/en/stable/)

Argo CD automates the deployment of the desired application states in the specified target environments. Application deployments can track updates to branches, tags, or pinned to a specific version of manifests at a Git commit. See tracking strategies for additional details about the different tracking strategies available.

### <img align="left" alt="Git" width="18px" src="https://cncf-branding.netlify.app/img/projects/argo/icon/color/argo-icon-color.svg" /> [Argo Events](https://argoproj.github.io/argo-events/)

Argo Events is an event-driven workflow automation framework for Kubernetes which helps you trigger K8s objects, Argo Workflows, Serverless workloads, etc. on events from a variety of sources like webhooks, S3, schedules, messaging queues, gcp pubsub, sns, sqs, etc.

### <img align="left" alt="Git" width="18px" src="https://cncf-branding.netlify.app/img/projects/argo/icon/color/argo-icon-color.svg" /> [Argo Rollouts](https://argoproj.github.io/argo-rollouts/)

Argo Rollouts is a Kubernetes controller and set of CRDs which provide advanced deployment capabilities such as blue-green, canary, canary analysis, experimentation, and progressive delivery features to Kubernetes.

Argo Rollouts (optionally) integrates with ingress controllers and service meshes, leveraging their traffic shaping abilities to gradually shift traffic to the new version during an update. Additionally, Rollouts can query and interpret metrics from various providers to verify key KPIs and drive automated promotion or rollback during an update.

### <img align="left" alt="Git" width="18px" src="https://cncf-branding.netlify.app/img/projects/argo/icon/color/argo-icon-color.svg" /> [Argo Workflows](https://argoproj.github.io/argo-workflows/)

Argo Workflows is an open source container-native workflow engine for orchestrating parallel jobs on Kubernetes. Argo Workflows is implemented as a Kubernetes CRD (Custom Resource Definition).

### 🔩 Tooling

|          Tools           |   Version   |                            Repo                            | Status |
| :----------------------: | :---------: | :--------------------------------------------------------: | :----: |
|      argo-rollouts       |   2.35.1    |            https://argoproj.github.io/argo-helm            |   ✅    |
|      argo-workflows      |   0.41.1    |            https://argoproj.github.io/argo-helm            |   ✅    |
|           base           |   1.22.0    |    https://istio-release.storage.googleapis.com/charts     |   ✅    |
|       cert-manager       |   v1.14.4   |                 https://charts.jetstack.io                 |   ✅    |
|          cilium          |   1.15.4    |                   https://helm.cilium.io                   |   ✅    |
|      cost-analyzer       |    2.2.1    |          https://kubecost.github.io/cost-analyzer          |   ✅    |
|        devxp-app         |   0.2.38    |          https://devxp-tech.github.io/helm-charts          |   ✅    |
|           dex            |   0.17.1    |                  https://charts.dexidp.io                  |   ✅    |
|       external-dns       |    7.1.2    |             https://charts.bitnami.com/bitnami             |   ✅    |
|         gateway          |   1.22.0    |    https://istio-release.storage.googleapis.com/charts     |   ✅    |
|         grafana          |    7.3.8    |           https://grafana.github.io/helm-charts            |   ✅    |
|          jaeger          |    2.1.0    |        https://jaegertracing.github.io/helm-charts         |   ✅    |
|        karpenter         |   v0.33.4   |               oci://public.ecr.aws/karpenter               |   ✅    |
|      kiali-operator      |   1.82.0    |               https://kiali.org/helm-charts                |   ✅    |
|     kube-downscaler      |    0.7.4    |              https://charts.deliveryhero.io/               |   ✅    |
|  kube-prometheus-stack   |   58.1.1    |     https://prometheus-community.github.io/helm-charts     |   ✅    |
|       kubeclarity        |   v2.23.1   |         https://openclarity.github.io/kubeclarity          |   ✅    |
|         kyverno          |    3.1.4    |             https://kyverno.github.io/kyverno              |   ✅    |
|           loki           |   5.47.2    |           https://grafana.github.io/helm-charts            |   ✅    |
|      metrics-server      |   3.12.1    |     https://kubernetes-sigs.github.io/metrics-server/      |   ✅    |
|    mimir-distributed     |    5.3.0    |           https://grafana.github.io/helm-charts            |   ✅    |
| nexus-repository-manager |   64.2.0    |          https://sonatype.github.io/helm3-charts           |   ✅    |
|  opentelemetry-operator  |   0.53.2    | https://open-telemetry.github.io/opentelemetry-helm-charts |   ✅    |
|         promtail         |   6.15.5    |           https://grafana.github.io/helm-charts            |   ✅    |
|      sealed-secrets      |   2.15.3    |       https://bitnami-labs.github.io/sealed-secrets        |   ✅    |
|        sonarqube         | 10.5.0+2748 |     https://SonarSource.github.io/helm-chart-sonarqube     |   ✅    |
|          tempo           |    1.7.2    |           https://grafana.github.io/helm-charts            |   ✅    |
|        wordpress         |   22.2.0    |             https://charts.bitnami.com/bitnami             |   ✅    |

### 🔨 To Do

|     Issue     |   Description   | Status |
| :-----------: | :-------------: | :----: |
|   wordpress   |  Fix kustomize  |   ✅    |
| argo-worflows |    Fix Build    |   ❌    |
| yaml-validate | Fix CI Workflow |   ❌    |

### 🛠️ Required Tools

|      Tools       | Version  |
| :--------------: | :------: |
|      argocd      |  v2.8.4  |
| argocd-autopilot | v0.4.17  |
|       helm       | v3.13.3  |
|     kubectl      | v1.29.0  |
|    kustomize     | v5.0.4-0 |

### 🌳 Project Structure

````bash
.
├── apps
│   ├── argo-rollouts
│   ├── backstage
│   ├── cert-manager
│   ├── crossplane
│   ├── grafana
│   ├── istio-base
│   ├── istio-ingress
│   ├── istiod
│   ├── jaeger
│   ├── kiali-operator
│   ├── kubernetes-dashboard
│   ├── loki
│   ├── metrics-server
│   ├── prometheus
│   ├── promtail
│   ├── rollout-demo
│   ├── sealed-secrets
│   ├── sonarqube
│   └── wordpress
├── bootstrap
│   ├── argo-cd
│   └── cluster-resources
├── infra
│   └── networking
├── projects
└── secrets
````

### 🖊️ Code of Conduct

See [CODE-OF-CONDUCT.md](.github/CODE-OF-CONDUCT.md).
### 🔒 Security

See [SECURITY.md](.github/SECURITY.md).

## ✨ Contributions

We ❤️ contributions big or small. [See our guide](contributing.md) on how to get started.

### Thanks to all our contributors!

<a href="https://github.com/devxp-tech/gitops/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=devxp-tech/gitops" />
</a>
