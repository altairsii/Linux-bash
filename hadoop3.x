ubuntu 安装hadoop3.x时，启动dfs异常：如下
  pdsh@myhost: localhost: rcmd: socket: Permission denied
解决方法：
  echo "ssh" | sudo tee /etc/pdsh/rcmd_default
