## Argo Rollouts

### What is Argo Rollouts?
Argo Rollouts is a Kubernetes controller and set of CRDs which provide advanced deployment capabilities such as blue-green, canary, canary analysis, experimentation, and progressive delivery features to Kubernetes.

Argo Rollouts (optionally) integrates with ingress controllers and service meshes, leveraging their traffic shaping abilities to gradually shift traffic to the new version during an update. Additionally, Rollouts can query and interpret metrics from various providers to verify key KPIs and drive automated promotion or rollback during an update.


### Why Argo Rollouts?
The native Kubernetes Deployment Object supports the RollingUpdate strategy which provides a basic set of safety guarantees (readiness probes) during an update. However the rolling update strategy faces many limitations:

Few controls over the speed of the rollout
Inability to control traffic flow to the new version
Readiness probes are unsuitable for deeper, stress, or one-time checks
No ability to query external metrics to verify an update
Can halt the progression, but unable to automatically abort and rollback the update
For these reasons, in large scale high-volume production environments, a rolling update is often considered too risky of an update procedure since it provides no control over the blast radius, may rollout too aggressively, and provides no automated rollback upon failures.

Controller Features
Blue-Green update strategy
Canary update strategy
Fine-grained, weighted traffic shifting
Automated rollbacks and promotions
Manual judgement
Customizable metric queries and analysis of business KPIs
Ingress controller integration: NGINX, ALB
Service Mesh integration: Istio, Linkerd, SMI
Metric provider integration: Prometheus, Wavefront, Kayenta, Web, Kubernetes Jobs

![Read more](https://argoproj.github.io/argo-rollouts)