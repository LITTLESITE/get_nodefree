currentdate=$(date +%Y%m%d)  
currentmonth=$(date +%Y%m)
currentmonths=$(date +%m)
currentyears=$(date +%Y)
cd `dirname $0`
echo delete old subscribes
if [ ! -f "./sub_nodefree.txt" ];then
 rm ./sub_nodefree.txt
fi
if [ ! -f "./sub_v2rayshare.txt" ];then
 rm ./sub_v2rayshare.txt
fi
if [ ! -f "./sub_nodefree.yaml" ];then
 rm ./sub_nodefree.txt
fi
if [ ! -f "./sub_v2rayshare.yaml" ];then
 rm ./sub_v2rayshare.txt
fi
echo start download the subscribes
echo nodefree
wget https://nodefree.org/dy/$currentmonth/$currentdate.txt
wget https://nodefree.org/dy/$currentmonth/$currentdate.yaml
echo get subscribe sucessfully
echo start rename the file~
mv $currentdate.txt sub_nodefree.txt
mv $currentdate.yaml sub_nodefree.yaml

echo v2rayshare
wget https://v2rayshare.com/wp-content/uploads/$currentyears/$currentmonths/$currentdate.txt
wget https://v2rayshare.com/wp-content/uploads/$currentyears/$currentmonths/$currentdate.yaml
echo get subscribe sucessfully
mv $currentdate.txt sub_v2rayshare.txt
mv $currentdate.yaml sub_v2rayshare.yaml
echo hope you have a good day~
echo bye~
