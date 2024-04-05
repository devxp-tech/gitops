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


|      Tools       | Version | Deployed |
| :--------------: | :-----: | :------: |
| argocd-autopilot | v0.3.0  |    ✅     |
|      argocd      |  2.3.0  |    ✅     |
|   argo-events    |  1.5.5  |    ✅     |
|  argo-workflows  |  3.2.8  |    ✅     |
|  argo-rollouts   |  1.1.1  |    ✅     |
|    kustomize     |         |    ✅     |
|  sealed-secrets  | 0.17.3  |    ✅     |
|      istio       | 1.11.4  |    ✅     |
|    wordpress     |   5.9   |    ✅     |
|   cert-manager   |  1.6.1  |    ✅     |
|    prometheus    |    x    |    ✅     |
|     grafana      |    x    |    ✅     |
|  metrics-server  |  0.5.1  |    ✅     |

### 🔨 To Do


|     Issue     |   Description   | Status |
| :-----------: | :-------------: | :----: |
|   wordpress   |  Fix kustomize  |   ✅    |
| argo-worflows |    Fix Build    |   ❌    |
| yaml-validate | Fix CI Workflow |   ❌    |

### 🛠️ Required Tools

|      Tools       | Version |
| :--------------: | :-----: |
|     kubectl      | v1.22.3 |
| argocd-autopilot | v0.2.28 |

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
