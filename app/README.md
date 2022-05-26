# teste-argo

teste-argo


## [**DevSpace**](https://devspace.sh/)

### 💡 **Why DevSpace?**



- Streamlined Workflow
- Faster Iterations
- Feature-Rich UI

### **What is DevSpace?**


DevSpace is an open-source developer tool for Kubernetes that lets you develop and deploy cloud-native software faster.

DevSpace allows you to develop applications directly inside a Kubernetes cluster.

The biggest advantages of developing directly inside Kubernetes is that your dev environment will be very similar to your production environment and you can have much greater confidence that everything will work in production when shipping new features.


## [**K3D**](https://k3d.io/)

### **What is k3d?**


k3d is a lightweight wrapper to run k3s (Rancher Lab’s minimal Kubernetes distribution) in docker.

k3d makes it very easy to create single- and multi-node k3s clusters in docker, e.g. for local development on Kubernetes.

### 🛠️ **Requirements**

|  Tools   | Version |
| :------: | :-----: |
| kubectl  | v1.22.3 |
| devspace | 5.18.4  |
|   k3d    | v5.3.0  |

### [*kubectl*](https://kubernetes.io/)

- [Install kubectl on Linux](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)
- [Install kubectl on macOS](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos)
- [Install kubectl on Windows](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows)

### **Install DevSpace**

- [Install DevSpace](https://devspace.sh/cli/docs/getting-started/installation)

### **Install K3D**

```bash
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
```
## 🚀 **Let's Start**
### *Clone the project*

```bash
git clone git@github.com:diegoluisi/devspace-python.git
```

### *Create Cluster and NameSpace*

```bash
k3d cluster create --config k3d.yaml
kubectl create namespace teste-argo
```

### *Configure DevSpace*

```bash
devspace use namespace teste-argo
```

## 🌎 **Start Development**

```bash
devspace dev

  ____              ____
  |  _ \  _____   __/ ___| _ __   __ _  ___ ___
  | | | |/ _ \ \ / /\___ \| '_ \ / _` |/ __/ _ \
  | |_| |  __/\ V /  ___) | |_) | (_| | (_|  __/
  |____/ \___| \_/  |____/| .__/ \__,_|\___\___|
                          |_|

Welcome to your development container!

This is how you can work with it:
- Run `python main.py` to build the application
- Files will be synchronized between your local machine and this container
- Some ports will be forwarded, so you can access this container on your local machine via http://localhost

```

### *Start application*

```bash
python main.py
```

### *Check the application status*

```bash
curl http://localhost/
Hello World!
```

### *Debugging*

In your favorite editor edit the main.py file and save, stop and start application.

```bash
CTRL+C
python main.py
```

## 📈 **DevSpace UI**  
<br/>

![DevSpace UI](.images/devspace-ui.png)

## ♻️ **Purge**

```bash
devspace purge
```
