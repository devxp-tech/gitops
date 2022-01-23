## GitOps
The core idea of GitOps is to have a git repository that contains declarative descriptions of the desired infrastructure in the production environment and has an automated process to make the production environment match the state described in that repository.

Now that we know the central idea, let's go back a little bit to the acronym GitOps and let's understand the role of git, the role of ops and how they meet.

### - Argo CD
Read more [here](./argo-cd/README.md)


### - Argo Events
Read more [here](./argo-events/README.md)


### - Argo Rollouts
Read more [here](./argo-rollouts/README.md)


### - Argo Workflow
Read more [here](./argo-workflows/README.md)


### Structure
````bash
tree -L 4
.
├── argo-cd
│   ├── clusters
│   │   └── lgsk8sp1
│   │       ├── apps
│   │       ├── deploy
│   │       └── tools
│   └── README.md
├── argo-events
│   └── README.md
├── argo-rollouts
│   └── README.md
├── argo-workflows
│   ├── README.md
│   └── workflow
│       └── clusters
│           └── lgsk8sp1
└── README.md
````