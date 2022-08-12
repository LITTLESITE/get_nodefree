currentdate=$(date +%Y%m%d)  
currentmonth=$(date +%Y%m)
cd `dirname $0`
echo delete old subscribes
if [ ! -f "./sub.txt" ];then
 rm ./sub.txt
fi
if [ ! -f "./sub.yaml" ];then
 rm ./sub.yaml
fi
echo start download the subscribes
echo https://nodefree.org/dy/$currentmonth/$currentdate.yaml
wget https://nodefree.org/dy/$currentmonth/$currentdate.yaml
echo get yaml sucessfully
echo https://nodefree.org/dy/$currentmonth/$currentdate.txt
wget https://nodefree.org/dy/$currentmonth/$currentdate.txt
echo get txt sucessfully
echo start rename the file~
mv $currentdate.yaml sub.yaml
mv $currentdate.txt sub.txt
echo hope you have a good day~
echo bye~