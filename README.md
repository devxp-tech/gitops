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

### Project Structure

````bash
tree -d
.
├── apps
│   ├── argo
│   ├── argo-rollouts
│   ├── cert-manager
│   ├── external-dns
│   ├── grafana
│   ├── hello-gitops
│   │   ├── base
│   │   └── overlays
│   │       └── production
│   ├── hello-world
│   ├── istio
│   ├── metrics-server
│   ├── prometheus
│   ├── sealed-secrets
│   └── wordpress
│       ├── base
│       └── overlays
│           └── production
├── bootstrap
│   ├── argo-cd
│   │   ├── base
│   │   └── overlays
│   │       └── production
│   └── cluster-resources
│       └── in-cluster
├── fix-folders
│   ├── argo-cd
│   │   └── base
│   ├── argo-events
│   ├── argo-rollouts
│   └── argo-workflows
│       └── workflows-templates
└── projects
````

