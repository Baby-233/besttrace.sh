#!/bin/sh
dir=/tmp/besttrace4linux
file=$dir/besttrace4linux.zip
file2=$dir/besttrace
mkdir -p $dir
wget https://cdn.ipip.net/17mon/besttrace4linux.zip -O $file
unzip $file -d $dir
chmod +x $file2
/bin/mv -f $file2 /usr/local/bin/
rm -rf $dir
if [ "$(command -v /usr/local/bin/besttrace)" ]; then besttrace='/usr/local/bin/besttrace'; fi
if [ "$(command -v besttrace)" ]; then besttrace='besttrace'; fi
if [ "$besttrace" ]; then
red='\e[31m'
non='\e[0m'
clear
echo -e "执行${red}${besttrace} ip${non}开始运行
例子如下：
北京电信:${red}${besttrace} 113.59.224.1${non}
北京联通:${red}${besttrace} 61.49.137.5${non}
北京移动:${red}${besttrace} 218.205.152.14${non}
上海电信:${red}${besttrace} 101.95.120.109${non}
上海联通:${red}${besttrace} 112.65.35.62${non}
上海移动:${red}${besttrace} 183.192.160.3${non}
广州电信:${red}${besttrace} 14.215.116.1${non}
广州联通:${red}${besttrace} 27.40.0.30${non}
广州移动:${red}${besttrace} 221.183.63.121${non}
成都教育网:${red}${besttrace} 202.112.14.151${non}"
else
echo -e "${red}好像安装失败了${non} -_-!"
fi
