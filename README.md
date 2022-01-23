## Argo CD

### What is Argo CD?
Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes.

### Why Argo CD?
Application definitions, configurations, and environments should be declarative and version controlled. Application deployment and lifecycle management should be automated, auditable, and easy to understand.

### Documentation
To learn more about Argo CD go to the complete documentation.   
Read more [here](https://argo-cd.readthedocs.io/en/stable/)

### Requirements
Installed kubectl command-line tool.   
Have a kubeconfig file (default location is ~/.kube/config).

### Clone my repo
````bash
git@github.com:diegoluisi/argocd.git
cd argocd
````

### Organization
````bash
tree -L 4
.
├── argo-cd
│   └── clusters
│       └── lgsk8sp1
│           ├── apps
│           ├── deploy
│           └── tools
├── argo-events
│   └── README.MD
├── argo-workflow
│   ├── README.MD
│   └── workflow
│       └── clusters
│           └── lgsk8sp1
└── README.md
````
