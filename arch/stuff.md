stuff to install:

# general
ranger
btop
anydesk
flameshot --> grim
pavucontrol



# code
docker
docker-compose
nvim
tmux
zsh
git
fzf
ripgrep
fd
bat
exa
kind
kubectx
kubens
stern

nvm
android studio

# media
vlc
spotify


# extra
kubectl 1.25.4  (e)
kubectl 1.21.14 (r)


Kubectx/kubens
https://github.com/ahmetb/kubectx
sudo sh -c ". $DOTFILES/_functions.sh; clone_or_update /opt/kubectx https://github.com/ahmetb/kubectx"
sudo ln -s -f /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s -f /opt/kubectx/kubens /usr/local/bin/kubens

Stern
STERN_VERSION=1.22.0
https://github.com/stern/stern/releases/download/v${STERN_VERSION}/stern_${STERN_VERSION}_linux_amd64.tar.gz

Kustomize
KUSTOMIZE_VERSION=4.5.5
https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz

kube-ps1
https://github.com/jonmosco/kube-ps1
