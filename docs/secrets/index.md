# Sealed Secrets

## Fetch public certificate

kubeseal --fetch-cert > pub.crt

## Fetch private certificate

kubectl get secret -n kube-system -l sealedsecrets.bitnami.com/sealed-secrets-key -o yaml >main.key kubectl get secret -n kube-system sealed-secrets-key -o yaml >>main.key
