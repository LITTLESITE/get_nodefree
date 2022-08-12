currentdate=$(date +%Y%m%d)  
currentmonth=$(date +%Y%m)
currentmonths=$(date +%m)
currentyears=$(date +%Y)
cd `dirname $0`
echo delete old subscribes
if [ ! -f "./sub_v2rayshare.txt" ];then
 rm ./sub_v2rayshare.txt
fi
if [ ! -f "./sub_v2rayshare.yaml" ];then
 rm ./sub_v2rayshare.txt
fi
echo get subscribe
wget https://v2rayshare.com/wp-content/uploads/$currentyears/$currentmonths/$currentdate.txt
wget https://v2rayshare.com/wp-content/uploads/$currentyears/$currentmonths/$currentdate.yaml
echo get subscribe sucessfully
mv $currentdate.txt sub.txt
mv $currentdate.yaml sub.yaml
echo hope you have a good day~
echo bye~
