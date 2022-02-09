sudo apt-get install -y vim bash-completion jq 
source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
echo "autocmd FileType yaml setlocal ai ts=2 sw=2 et" >> ~/.vimrc
