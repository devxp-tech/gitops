## GitOps

The core idea of GitOps is to have a git repository that contains declarative descriptions of the desired infrastructure in the production environment and has an automated process to make the production environment match the state described in that repository.

Now that we know the central idea, let's go back a little bit to the acronym GitOps and let's understand the role of git, the role of ops and how they meet.




|      Tools       | Version | Deployed |
| :--------------: | :-----: | :------: |
| argocd-autopilot | 0.2.28  |    ✅    |
|      argocd      |  2.3.0  |    ✅    |
|   argo-events    |         |    ✅    |
|  argo-workflows  |         |    ✅    |
|  argo-rollouts   |         |    ✅    |
|    kustomize     |         |    ✅    |
|  sealed-secrets  |  0.17.3 |    ✅    |
|      istio       | 1.11.4  |    ✅    |
|    wordpress     |    x    |    ✅    |
|   cert-manager   |    x    |    ✅    |
|    prometheus    |    x    |    ✅    |
|     grafana      |    x    |    ✅    |


### - Argo-CD Auto Pilot

Read more

### - Argo CD

Read more [here](./argo-cd/README.md)

### - Argo Events

Read more [here](./argo-events/README.md)

### - Argo Rollouts

Read more [here](./argo-rollouts/README.md)

### - Argo Workflow

Read more [here](./argo-workflows/README.md)

## Need to Fix

### Structure

````bash
tree -L 4
.
├── apps
│   ├── argo
│   │   ├── argo-events.yml
│   │   ├── argo-workflows.yml
│   │   └── virtualservice.yml
│   ├── argo-rollouts
│   │   ├── dashboard-install.yaml
│   │   ├── install.yaml
│   │   └── install.yaml_old
│   ├── argo-rollouts.yml
│   ├── argo.yml
│   ├── cert-manager
│   │   ├── cert-manager.yaml
│   │   └── clusterissuer.yaml
│   ├── cert-manager.yml
│   ├── external-dns
│   │   └── external-dns.yaml
│   ├── grafana
│   │   ├── grafana-dashboardDatasources.yaml
│   │   ├── grafana-dashboardDefinitions.yaml
│   │   ├── grafana-dashboardSources.yaml
│   │   ├── grafana-datasource-config.yml
│   │   ├── grafana-deployment.yml
│   │   ├── grafana-serviceAccount.yaml
│   │   ├── grafana-service.yml
│   │   └── grafana-vs.yml
│   ├── grafana.yml
│   ├── hello-gitops
│   │   ├── base
│   │   │   ├── deploy.yml
│   │   │   ├── hpa.yml
│   │   │   ├── kustomization.yml
│   │   │   └── virtualservice.yml
│   │   └── overlays
│   │       └── production
│   ├── hello-gitops.yml
│   ├── hello-world
│   │   ├── deploy.yml
│   │   ├── gateway.yaml
│   │   ├── kustomization.yaml
│   │   └── virtualservice.yml
│   ├── istio
│   │   ├── certificate.yaml
│   │   └── gateway.yaml
│   ├── istio.yml
│   ├── metrics-server
│   │   └── install.yml
│   ├── metrics-server.yml
│   ├── prometheus
│   │   ├── prometheus-cm.yml
│   │   ├── prometheus-deployment.yml
│   │   ├── prometheus-role.yml
│   │   └── prometheus-service.yml
│   ├── prometheus.yml
│   ├── README.md
│   ├── sealed-secrets
│   │   ├── controller.yaml
│   │   └── README.md
│   ├── sealed-secrets.yml
│   ├── wordpress
│   │   ├── base
│   │   │   ├── deploy-mysql.yml
│   │   │   ├── deploy-wordpress.yml
│   │   │   ├── hpa.yml
│   │   │   ├── kustomization.yml
│   │   │   ├── pvc-mysql.yml
│   │   │   ├── pvc-wordpress.yml
│   │   │   ├── pv.yml
│   │   │   ├── storage-class.yml
│   │   │   └── virtualservice.yml
│   │   ├── overlays
│   │   │   └── production
│   │   └── sealed-secret.yaml
│   └── wordpress.yml
├── bootstrap
│   ├── argo-cd
│   │   ├── base
│   │   │   ├── kustomization.yaml
│   │   │   └── namespace.yaml
│   │   ├── kustomization.yaml
│   │   └── overlays
│   │       └── production
│   ├── argo-cd.yaml
│   ├── cluster-resources
│   │   ├── in-cluster
│   │   │   ├── argocd-ns.yaml
│   │   │   └── README.md
│   │   └── in-cluster.json
│   ├── cluster-resources.yaml
│   └── root.yaml
├── fix-folders
│   ├── argo-cd
│   │   ├── base
│   │   │   ├── install.yml
│   │   │   └── virtualservice.yml
│   │   └── README.md
│   ├── argo-events
│   │   ├── event-bus.yml
│   │   ├── event-sources.yml
│   │   ├── rbac.yaml
│   │   ├── README.md
│   │   ├── sensor-argo.yml
│   │   ├── sensor-hello-gitops.yml
│   │   ├── sensor-rbac.yaml
│   │   └── sensors.yaml
│   ├── argo-rollouts
│   │   ├── install.yaml
│   │   └── README.md
│   └── argo-workflows
│       ├── buildkit-template.yaml
│       ├── cluster-workflow-build.yaml
│       ├── clusterworkflowtemplates.yaml
│       ├── hello-world.yml
│       ├── rbac-workflows-sa.yaml
│       ├── README.md
│       ├── slack.yml
│       ├── templates.yaml
│       ├── virtualservice.yml
│       ├── workflow-rbac.yaml
│       ├── workflows-templates
│       │   └── hello-world.yml
│       └── workflows.yaml
├── projects
│   ├── argocd-projects.yml
│   ├── dev.yaml
│   ├── ops.yaml
│   ├── README.md
│   └── test.yaml
├── README.md
└── sensor-hello-gitops.yml
````

