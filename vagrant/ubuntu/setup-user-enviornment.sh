kubectl completion bash >> /etc/bash.bashrc
echo "alias k=kubectl" >> /etc/bash.bashrc
echo "complete -F __start_kubectl k" >> /etc/bash.bashrc
echo "autocmd FileType yaml setlocal ai ts=2 sw=2 sts=2 et" > /etc/vim/vimrc
exit

