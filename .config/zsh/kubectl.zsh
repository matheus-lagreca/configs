# kubectl
# add these to the user bin 
alias k='kubectl'
# alias kust="~/kube/kustomize"

alias kldi='kind load docker-image'
alias kg="kubectl get"
alias dpods='kubectl describe pod'
alias kapply= 'kubectl apply -f'

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
# alias kust-diff="kustomize build . | kubectl diff -f - || true"
# alias kust-apply="kustomize build . | kubectl apply -f -"
alias klf="kubectl logs -f"
alias kusthis="kubectl apply -k ."





##### local cluster ####

# create lc generate backend tag and push do kind
# run a kind create cluster before****
alias lcgpt="dcb local-api-prod;kind load docker-image local-api-prod:local-prod --name kind"
## apply db
alias lcadb="kubectl apply -f ~/mconf/localcluster/triades/database/deployment.yml"
## apply job
alias lcajset="k apply -f jobs/setup.yml"
## delete deployments
alias lcdd="kubectl delete deployment triades-poc-dev-backend; kubectl delete deployment local-postgres-deployment"
lcdj() {
  kubectl delete job triades-poc-dev-backend-"$1"-job
}
