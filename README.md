# Kubernetics Assignment

1). You need to write required yaml files for this service.

2). You need to create jar for this service first and then create dockerfile for it.

3). After that to deploy this service in kubernetes you need to install minikube in your local or if you have any cloud platform account then it is also fine.

4). You can access this application on any port you want to (it's your choice).

5). This application is deploying tomcat server in kubernetes.

## Prerequisites 
Download , install and configure docker , kubectl

### Step 1

Unzip the provided zip file and then prepare the war file of pom.xml

Get in to terminal and into the directory where you have unzipped file. 
```sh
sudo apt install maven
```
Go to the  directory where your pom file is present and execute the following command 
```sh
mvn package
```
Now you war file will be created in the target folder .

### Step 2

create a dockerfile and add the code that had been provided .
```sh
vim Dockerfile
```

### Step 3
 Create a deployemt.yml file 
 ```sh
vim deployment.yml
```
add the deployment code as it is provided .

### Step 4
 Create a service.yml file 
 ```sh
vim service.yml
```
add the service code as it is provided 

### Step 5
Build image of the given webapp by running the foloowing command 
```sh
sudo docker build -t web_app .
```
Check if the image is buld 
```sh
sudo docker images
```
make a tag for the image 
```sh
sudo docker tag web_app:latest ankit9911/web_app
```
login to your dockerhub
```sh
sudo docker login
```
provide your credentials

### Step 6
Now push the image that you have prepared to docker Hub
```sh
sudo docker push ankit9911/web_app
```

### Step 7
Install and setup minikube
```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
```
```sh
minikube start
```
make alias 
```sh
alias kubectl="minikube kubectl --"
```
### Step 8
Create K8's resources 
```sh
kubectl create -f deployment.yml
```
```sh
kubectl create -f service.yml
```
check for their status and if they are running or not
```sh
kubectl get all
```
### Step 9
Now you are all set to run your service , run the following command in your terminal
```sh
minikube service web-app-service
```
you will get redirected to your defauld browser , check if evrything is running as desired or not .

