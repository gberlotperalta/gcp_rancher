# GCP RANCHER GKE  

## Create a VM for running rancher  

1- Select ubuntu 18.04 as a boot disk  
2- Enable http and https  
3- In Automation section add the following script on startup script.  

git clone https://github.com/gberlotperalta/gcp_rancher.git  
cd gcp_rancher 
chmod +x install_docker.sh 
sudo ./install_docker.sh  

4- Create the VM  

##