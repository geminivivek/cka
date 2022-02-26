sudo su - vagrant
kubectl completion bash >> ~/.bashrc
echo "alias k=kubectl" >> ~/.bashrc
complete -F __start_kubectl k
echo "autocmd FileType yaml setlocal ai ts=2 sw=2 sts=2 et" > ~/.vimrc
exit

