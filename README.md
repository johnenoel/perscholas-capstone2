## Deploying & Monitoring a Golang Application

## TOOLS
1-	Source Code Management : Git/GitHub
2-	CI/CD Pipeline : Jenkins
3-	Target to host the app: Docker/Docker hub
4-	Provisioning using: Terraform
5-	Configuration Management; Ansible
6-	Deploying docker container/image: Kubernetes
7-	Monitoring tools: Elk + Metric beat
8-	Software package: Golang

## WORKFLOW
1-	Develop the Application
2-	Commit & push the code to GitHub
3-	Create Jenkins jobs
a.	Job 1 – uses Terraform to spin an EC2 instance
b.	Job 2 – uses Ansible to install Minikube & kubectl 
c.	Job 3 – uses create & push the image to Docker Hub, deploy the application to Test Kubernetes 
d.	Job 4 – uses create & push the image to Docker Hub, deploy the application to Production Kubernetes 
4-	Use a browser to view the App
5-	Use Elkstack and metric beat to collect data

## My DevOps Diagram
![image](https://user-images.githubusercontent.com/39747014/156647963-92aa2f96-5b96-4495-9d96-61ffeba3ec48.png)

## The Network
![image](https://user-images.githubusercontent.com/39747014/156648067-94954a9c-9c84-4e11-8782-ff3154e5686c.png)

## The Dockerfile
![image](https://user-images.githubusercontent.com/39747014/156650326-015bfa54-0897-4438-83e0-21b1b6603b93.png)

## The Golang Script
![image](https://user-images.githubusercontent.com/39747014/156650291-27d6ed7f-69d5-4ace-a5bc-81e416ae9e04.png)

## Job 1 – Using terraform to spin a new EC2 instance that will be used a Test Kubernetes
## The Terraform script  to create the instance
![image](https://user-images.githubusercontent.com/39747014/156651095-95c69865-44e8-42f6-a9e4-2b41ca90f871.png)

![image](https://user-images.githubusercontent.com/39747014/156650639-61ed0925-e064-4aac-b421-138335db2a89.png)

![image](https://user-images.githubusercontent.com/39747014/156651169-c7883c94-1fd6-40cc-b9ac-41279f602645.png)

## Job 2 -- Running Ansible to install Minikube
## The Ansible script to install minikube and kubectl
![image](https://user-images.githubusercontent.com/39747014/156651707-27d13b6d-3b2c-4349-bf89-da7583bf38fd.png)

## The Jenkins job
![image](https://user-images.githubusercontent.com/39747014/156652129-e54483c4-daa0-449b-879d-be541ead69cb.png)

## Check minikube status
![image](https://user-images.githubusercontent.com/39747014/156652204-56376f36-cefe-4c60-a122-0553f34b9dba.png)

## Job 3 -- Deploying the application to Test Kubernetes

## The jenkins job
![image](https://user-images.githubusercontent.com/39747014/156652288-276f4ac6-0ba1-4b03-a01b-200123956812.png)

## Checking the namespace
![image](https://user-images.githubusercontent.com/39747014/156652352-3196d774-df06-4e31-8de7-cfa644cd31e0.png)

## Verify the app is successfully deployed 
![image](https://user-images.githubusercontent.com/39747014/156652408-419699b9-a429-4e5e-a76a-6ba9fed8cc46.png)

## Job 4 -- Deploying the application to Production Kubernetes (54.204.128.29)
![image](https://user-images.githubusercontent.com/39747014/156652538-339f26c2-0510-4cee-bd33-0a5a28373c5d.png)

## The jenkins job
![image](https://user-images.githubusercontent.com/39747014/156652639-a7e73502-33d0-43e0-8412-1da77dc1ab01.png)

## Verify the namespace
![image](https://user-images.githubusercontent.com/39747014/156652596-3b6cfab2-5da0-4aae-a749-f2e48bdfc85b.png)

## Verify the app is successfully deployed 
![image](https://user-images.githubusercontent.com/39747014/156652671-24bc93d1-30c3-46f2-8a49-8041b8877255.png)



