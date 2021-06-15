docker run infracloudio/csvserver:latest
mkdir "/csvserver/inputdata"
mkdir -p "/csvserver/inputdata"
docker run infracloudio/csvserver:latest -v /csvserver/inputdata:/csvserver/inputdata
docker run -v /csvserver/inputdata:/csvserver/inputdata infracloudio/csvserver:latest
cd /csvserver/
ls
rm inputdata
cd inputdata/
ls
cd ..
rmdir  inputdata/
touch inputdata
docker run -v /csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
docker run -v /csvserver/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest

