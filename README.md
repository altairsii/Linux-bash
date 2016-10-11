# Linux-bash

# 与linux有关的命令集合
echo "xxx"               ----将xxx输出到标准输出中。默认为屏幕
read -p "xxx" key        ----从屏幕去读输入存入变量key中
case $key in
正则表达式1)执行分支1;;
正则表达式2)执行分支2;;
正则表达式3)执行分支3;;
*)默认执行分支;;
esac 
                         ----类似与switch
                       
$$                       ----Shell本身的PID（ProcessID）
$!                       ----Shell最后运行的后台Process的PID
$?                       ----最后运行的命令的结束代码（返回值）
$-                       ----使用Set命令设定的Flag一览
$*                       ----所有参数列表。如"$*"用「"」括起来的情况、以"$1 $2 … $n"的形式输出所有参数。
$@                       ----所有参数列表。如"$@"用「"」括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数
$#                       ----添加到Shell的参数个数
$0                       ----Shell本身的文件名
$1...$n                  ----添加到Shell的各参数值。$1是第1参数、$2是第2参数…。

while [ -h 条件 ]; do ... done   ----其中-h用来判断文件是否存在并且是符号连接

if [ xxx ]; then ... fi 

shift n                   ----参数列表左移n，n=0-n

dirname                   ----从给定的包含绝对路径的文件名中去除文件名（非目录的部分），然后返回剩下的路径（目录的部分）
basebane                  ----从给定的包含绝对路径的文件名中去除左边目录部分或者同时去除某个后缀的内容（目录的部分），然后返回剩下的部分

-h                        ----利于人观看的。

# http://www.runoob.com/linux/linux-shell-passing-arguments.html 教程

# 登陆执行脚本
  .bashrc 文件会在开启终端的时候执行
  /etc/rc.local 文件会在系统启动时执行，该文件是以root用户执行
  ~/.config/autostart/*.desktop  该文件会在登录后桌面加载结束后执行
    [Desktop Entry]                 
    Name=boot-ths                    ----桌面应用名称
    Exec=/home/wyb/ths/boot.sh       ----执行脚本路径
    Type=Application                 ----应用类型
    Terminal=false
    X-GNOME-Autostart-enabled=true   ----是否桌面加载结束后执行
