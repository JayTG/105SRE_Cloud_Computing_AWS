# SRE
## User Journey
> A user journey is a path a user may take to reach their goal when using a particular website. User journeys are used in designing websites to identify the different ways to enable the user to achieve their goal as quickly and easily as possible.
### User experience
> The user experience is how a user interacts with and experiences a product, system or service. It includes a person's perceptions of utility, ease of use, and efficiency
#### Cloud computing with AWS
##### AWS Services

- Creating githup repo to push the markdown doc
- Amazon Web Services (AWS)

### What is the role of SRE?
- An SRE is responsible for making sure that a given service is up and running
- Making sure that the user Experience is satisfactory through and through

### What are the four pillars of cloud computing?
- Ease of use
- Flexibility
- Robustness
- Cost Effective

### Why are there multiple avalibity zones in a region?
Multiple avaliability zones are needed so it can automatically using the load balance can change traffic diverting it to another zone when a zone is not repsonding 

### What is CDN?
CDN (content delivery network) They work by getting a request and storing data on the cache. it get stored at the nearest available zone from the user.

### On Prem vs Hybrid - On Prem Vs Public Cloud
![1 LRFaWc35HsUyKikmrzD9qw](https://user-images.githubusercontent.com/87706066/159496317-9e1b54d4-785e-4aef-8363-273b3fc61d43.png)

On prem means that business may use local data centres to store information. An example would be a bank storing private information sucha as passwords and other details. 
- The business will be responsible for the safekeeping of that prem data center.
- It can be costly 
- Many bank entities prefer using a hybrid approach, meaning that they store private info on prem, but will keep public information on the cloud service to reduce costs.

#### Prem vs public cloud
- Like descreibed before, it implies the costs of having a service on a local
- Prem (data center), this is very costly and the company has to risk the information being lost
- If cloud is used the provider is responsible for the safekeeping of that data center, and it follows a pay as you go model.

### Regions VS Availability zones
- Each region is a separate Geographic area.
- Availability zones (data centres) may be located within a Region. 


### Benefits of Cloud Computing
https://aws.amazon.com/application-hosting/benefits/
- Ease of use
> Designed to allow application providers, ISVs, and vendors to quickly and securely host your applications ??? whether an existing application or a new SaaS-based application.
- Felxibility 
> Enables you to select the operating system, programming language, web application platform, database, and other services you need. 
- Robustness
> With AWS, you take advantage of a scalable, reliable, and secure global computing infrastructure, the virtual backbone of Amazon.com???s multi-billion dollar online business that has been honed for over a decade.
- Cost-Effective
> You pay only for the compute power, storage, and other resources you use, with no long-term contracts or up-front commitments.


### AWS Global Infrastructure
https://aws.amazon.com/about-aws/global-infrastructure/
- The AWS Global Cloud Infrastructure is the most secure, extensive, and reliable cloud platform, offering over 200 fully featured services from data centers globally.
- Whether you need to deploy your application workloads across the globe in a single click, or you want to build and deploy specific applications closer to your end-users with single-digit millisecond latency, AWS provides you the cloud infrastructure where and when you need it.

**AWS Global Infrastructure Map**
![n7dvlx4qa6l8pozadq0m](https://user-images.githubusercontent.com/87706066/159285556-d8d5ad88-176a-4658-9c5c-639362a64e3e.png)

- The AWS Cloud spans 84 Availability Zones within 26 geographic regions around the world, with announced plans for 24 more Availability Zones and 8 more AWS Regions in Australia, Canada, India, Israel, New Zealand, Spain, Switzerland, and United Arab Emirates (UAE).

### AWS Diagram

![vtanoyog](https://user-images.githubusercontent.com/87706066/159463394-5b656e36-fe85-4ebb-9a08-2134562cbcb6.png)

### Connect local host to AWS VM through SSH
- put the SSH key into your .ssh folder (C:/users/username/.ssh)
- In AWS Select EC2
- Create a new instance (in this case ubuntu v18.04)
- Choose the subnet and enable the Auto assign public IP
- add a name tag
- add security groups:
 - make sure to restrict access in SSH selecting proper port
 - allow access to VM through HTTP
- Choose a exsisting key pair e.g. 105 | RSA
- Launch and connect following the instrcutions from AWS

### Using the VM
- Run: sudo apt-get update -y
- Run: sudo apt-get upgrade -y
- Run: sudo apt-get install nginx -y
- Check that it ws installed successfully by the public ip in the browser

### Working instance webpage example (Terminated)
http://34.250.89.52/

### Linux Command

- How to start a service `sudo systemctl start name_service`
- How to stop a service `sudo systemctl stop name_service`
- How to check status `systemctl status name_service`
- How to enable a service `systemctl enable name_service`
- How to install a package `sudo apt-get install package_name -y`
- How to remove a package `sudo apt-get remove package_name -y`
- How to check all process `top`
- Who am I `uname` or `uname -a`
- Where am I `pwd`
- Create a dir `mkdir dir_name`
- Check dir `ls` or `ls -a`
- Create file `touch name_file` or `nano file_name`
- Check content of the file without going inside the file `cat file_name`
- Move a file `mv file_name ~/location`
- Copy a file `cp file_name ~/location`
- Delete folder `rm -rf folder_name`

### File permissions
- How to check a file permission `ll`
- Change file premission  `chmod required_permission file_name`
- write `w` read `r` exe `x`
- https://chmod-calculator.com

### Bash scripting - automate process with the script

```bash
# create file called provision.sh

# it must start with #!/bin/bash
#!/bin/bash

# run updates
sudo apt-get update  -y

# run upgrades
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# ensure it's running - start nginx
sudo systemctl start nginx

# enable nginx
sudo systemctl enable nginx

`````

- Change the file to exe `chmod +x provision.sh`
- how to run an exe file `./provision.sh`

### Bash Tomcat install script

```bash 
#!/bin/bash
#get updates
sudo apt-get update -y
#get upgrades
sudo apt-get upgrade -y
# install tomcat
sudo apt install tomcat9 -y
# ensure it's running - start tomcat
sudo systemctl start tomcat9
# enable tomcat
sudo systemctl enable tomcat9
# allow traffic to port 8080
sudo ufw allow from any to any port 8080 proto tcp
`````````
Web address example
http://34.243.62.205:8080/

### Technical Questions
- What is a VPC?
> Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you have defined.
- What is a Internet Gateway?
> A computer that sits between different networks or applications. The gateway converts information, data or other communications from one protocol or format to another. 
- What is a Route Table?
> A route table contains a set of rules, called routes, that determine where network traffic from your subnet or gateway is directed
- What is a Subnet?
> A subnet, or subnetwork, is a network inside a network. Subnets make networks more efficient. Through subnetting, network traffic can travel a shorter distance without passing through unnecessary routers to reach its destination.
- What is a Nacls?
> (Network access control lists) It controls traffic to or from a subnet according to a set of inbound and outbound rules. 
- What is a Security Group?
> A security group acts as a virtual firewall, controlling the traffic that is allowed to reach and leave the resources that it is associated with
- How did you secure your app on the public cloud?
> Running tests on the app to determine limits of the public cloud. Setting up Security Group / Server Firewall. Installing/buying services that protect the instance against attacks designed to slow down/terminate the service.
- What are the outbound rules for SG by default? And why?
> Default SG starts with only one outbound rule that allows all traffic to leave the resource. You must add rules to enable any inbound traffic or to restrict the outbound traffic. A security group can be used only in the VPC for which it is created.
- What is the command to kill a process in linux?
> `kill` or `killall`

### VPC Diagram
![1VKTHtHwo3pUxeDP0ZmrOoA](https://user-images.githubusercontent.com/87706066/159799825-13fe4dbb-fb86-4586-ae1d-54342eae95a3.png)

### Monolith - N-tier - 2-tier & Microservices Architecture
- The Monolith before Microservices
  - Simple but has limitations and complexity
  - Heavy apps can slow down the start up time
  - Each update results into redeplying the full stack app
  - Challenging to scale up on demand
  - Fruitful for simple and lightweight apps

- Microservices
  - Improved maintainability: each service is relatively small and so is easier to understand and change
  - Better testability: services are smaller and faster to test
  - Better deployability: services can be deployed independently
  - Implementing requests that span multiple services is more difficult
  - Testing the interactions between services is more difficult
  - Implementing requests that span multiple services requires careful coordination between the teams

![1 Un9W-mw18NLtuQdsBNytJQ](https://user-images.githubusercontent.com/87706066/159909610-a5adb6e7-63c8-45b3-96ec-ccf416a2830f.png)

- Two-tier architecture
  - In a two-tier architecture, the client is on the first tier. The database server and web application server reside on the same server machine, which is the second tier. This second tier serves the data and executes the business logic for the web application.

- N-Tier architecture
  - A architecture more than two tiers, divides an application into logical layers and physical tiers. Layers are a way to separate responsibilities and manage dependencies.
 
![1 IPS8EUQAU6lmsV81aPlGjA](https://user-images.githubusercontent.com/87706066/159959691-3c7f8d41-ba44-4e88-853b-0db7bb8aab65.jpeg)


- The difference of scale out and scale up?
 - Scale out means to add new instances when the number of users increases. Scale up means to increase the specs (e.g. memory) when the size of what is being used in the instance is too high for the current specs#

![scale-out](https://user-images.githubusercontent.com/87706066/159910137-66baf563-cd52-46bc-93f5-325fef0b3207.jpg)

![scale-up](https://user-images.githubusercontent.com/87706066/159910233-6f3f3744-513d-4385-a8b3-5b361425dc28.jpg)

- Who is using Micro Services?
  - Amazon
  - Netflix
  - Uber
  - Ebay
  - Paypal
  - Twitter

### SRE (DevOps) Culture and CICD
article link: https://medium.com/@ahshahkhan/devops-culture-and-cicd-3761cfc62450

DevOps is a culture that bridges the gap between development and operation teams
DevOps can build a pipeline using Docker and Jenkins
Docker builds a container images for the app making easier to create deploy and run, fully automated build and test process which gives feedback

- CI (Continuous Integration)
> Developer muts merge/commit code to master brancg multiple times a day

![0 oT8URYV7NzjEplUZ](https://user-images.githubusercontent.com/87706066/159934357-c80d8e5d-37fc-49c8-b6a4-0ec251d29c4a.png)

- CD (Continuous Delivery)
> An extension of continuous integration to make sure that you can release new changes to quickl in sustainable way. Automated testing and releases

![0 AUo3q0hKivOsw6jU](https://user-images.githubusercontent.com/87706066/159934748-0e6da982-6c7b-472f-ba23-9fa2ae28ee08.png)


- CD (Continuous Deployment)
> Every change that passes all stages of the production pipeline is released. Only a failed test will prevent a new change to be deployed to production

![0 y2Pwj5q1aeZ6zweo](https://user-images.githubusercontent.com/87706066/159934839-30655bf5-1db6-4d65-acc6-b03aff57ab3d.png)


- CI CD Pipeline
> All about automation:Initiating code builds, automated testing, and automated deploying to the staging or production enviroments

![0 lPrZgS-AIFTRtKFc](https://user-images.githubusercontent.com/87706066/159935998-704eb675-11d4-4d62-a326-d5b587934300.png)

### SDLC
Software Development Life Cycle is the application of standard business practices to building software applications. It is typically divided into six to eight steps: Planning, Requirements, Design, Build, Document, Test, Deploy, Maintain.

![Phases-of-Software-Development-Life-Cycle](https://user-images.githubusercontent.com/87706066/159960407-cfff4c16-fdd9-4a15-80bb-aa4af9997bfc.png)


### GitFlow best practices
There is no CI good practice that includes GitFlow. For continuous integration to meet the definition, these are the good practices:

- Developers must implement all tests before they commit code. This is a non-negotiable and I will not work with developers who refuse to test. Professionals deliver working, tested code. Script kiddies don???t test.
- Stand up CI automation and trigger builds for every pull request so that bad changes can be rejected.
- Ensure that all tests are executed and linting and static code analysis is done for every PR.
- Implement CI practices. All developers branch from the trunk, make changes, and submit PRs back to the trunk. The branches are removed in less than 24 hours.

### S3 (Simple Storage Service)

https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html#S3Features

- Storage classes: Amazon S3 offers a range of storage classes designed for different use cases.
- Storage management: Amazon S3 has storage management features that you can use to manage costs, meet regulatory requirements, reduce latency, and save multiple distinct copies of your data for compliance requirements.
- Access management: Amazon S3 provides features for auditing and managing access to your buckets and objects. By default, S3 buckets and the objects in them are private. You have access only to the S3 resources that you create.
- Data processing: To transform data and trigger workflows to automate a variety of other processing activities at scale, you can use the following features.
- Storage logging and monitoring: Amazon S3 provides logging and monitoring tools that you can use to monitor and control how your Amazon S3 resources are being used.
- Analytics and insights: Amazon S3 offers features to help you gain visibility into your storage usage, which empowers you to better understand, analyze, and optimize your storage at scale.
- Strong consistency: Amazon S3 provides strong read-after-write consistency for PUT and DELETE requests of objects in your Amazon S3 bucket in all AWS Regions. This behavior applies to both writes of new objects as well as PUT requests that overwrite existing objects and DELETE requests.

### AWS CLI setup
- `aws configure`
- (input id keys region format)
- `aws s3 ls` (using aws go to s3 and do this command)
- `aws s3 mb s3://folder_name` (create bucket)

### Upload files to S3:
- `aws s3 cp file_name s3://folder_name` (aws service name-of-file path)

### Download data from s3:
- `aws s3 cp s3://folder_name/file_name ~/`

### Delete bucket
- `aws s3 rb s3://folder_name`
- `aws s3 rm s3://folder_name/file_name ~/` (Delete file in bucket

## API mini-project

### Online Api Development Diagram

![diagram](https://user-images.githubusercontent.com/87706066/160295359-fb89863d-20a4-4c71-9949-31ce3585c1eb.png)

### Northwind database in Ubuntu EC2 Instance 
- Go to AWS Console 
- Create a Ubuntu 18.04 Instaance using a security group with the ports: 22 80 and 1433 (1433 is important for the sql server wont be able to connect)
- Connect the instance on git bash following the instructions on AWS
- Follow this video https://www.youtube.com/watch?v=bzOljuaYeUk or documentation (Recommened) https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15
- If successful open Microsoft SQL Server Management Studio. Enter the instances public ip in server name, change the authentication to SQL Server. Finally enter the username as "sa" and enter the password as the password you set in whilst following the video eariler. A connection to the server should be established.
- Right click on the server name on the left side and add a new query, copy and paste the Northwinnd databse Raw text https://raw.githubusercontent.com/microsoft/sql-server-samples/master/samples/databases/northwind-pubs/instnwnd.sql into the query then execute it. The northwind database should not now be the SQL Server instance

### ASP.NET API on Windows EC2 Instance
- Go to AWS Console 
- Create a Microsoft Window Server Instaance using a security group with the ports: 22 80 and 3389 (3389 is important for Remote desktop protocol (RDP))
- Connect the instance following the instructions on AWS
- Open the asp.net solution in visual studio and 
- Follow this tutorial https://aws.amazon.com/getting-started/hands-on/host-net-web-app/ (even though its older it still works for the most part)
- After that and if that the api was published the webpage should show a 500 Error
- Inside the windows instance install Windows Hosting Bundle https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-aspnetcore-6.0.3-windows-hosting-bundle-installer 
-  Test the api by using it on postman (The web address is the public ip)

### Useful Links
- https://www.youtube.com/watch?v=bzOljuaYeUk 
- https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver15
- https://aws.amazon.com/getting-started/hands-on/host-net-web-app/

### Containers vs Virtual Machines

![containers-vs-virtual-machines](https://user-images.githubusercontent.com/87706066/160423786-62a3dec0-4763-4f68-89d1-f37a470fb0ea.jpg)

### Virtualzation vs Containerization comparison

![Screenshot 2022-03-29 100049](https://user-images.githubusercontent.com/87706066/160575267-195d03e8-b664-4d3f-92ce-13ca7f349fea.png)

### What is Docker?

Docker is an open source containerization platform. It enables developers to package applications into containers???standardized executable components combining application source code with the operating system (OS) libraries and dependencies required to run that code in any environment.

### Docker Architecture 

![sdsds](https://user-images.githubusercontent.com/87706066/160424540-94d25bbe-0922-4aaa-8abd-ee74b107aaa6.png)


## Docker install (Windows)
- Download and install Docker Desktop for Windows https://hub.docker.com/editions/community/docker-ce-desktop-windows
- After the installation restart the computer
- Open docker and the message should appear asking you to install the WLS2 Linux Kernel Package
- Do only step 4 https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package  
- After the installation is done restart Docker
- In powershell or bash type the commannd `docker --version` to check which verison of Docker is being used
- Type the commannd `docker run hello-world` to get the hello-world image and confirm Docker is working correctly


### Docker commannds
- check docker version `docker --version`
- run a image `docker run -d -p <portNum> <image_name>`
- show all images `docker images`
- show all images `docker ps` or `docker ps -a`
- copy a file from local to container `docker cp </file_path/file_name> <containerID>:</file_path/file_name>`
- enter an running container `docker exec -it <containerID>  sh`
- delete a container `docker rm <containerID> -f`
- show container logs `docker logs <containerID>`  

## Create a docker image from a container

https://www.sentinelone.com/blog/create-docker-image/

### Important Steps

- Locate and modify the html.file of the base container
- Create a image from base container `docker commit <base_ContainerID>`
- `docker images` to show all images and copy the image with the none tag
- Add a tag to the image `docker tag <containerID> <tag_name>`
- Run the new image a new port `docker run -d -p <portnum> <image_name>` or Delete the base container `docker rm <base_ContainerID> -f` and run the image on a default port
- Push the image on docker hub to create a new public repository or on the command line `docker push <DockerID/ImageName>`

### My Created Image
docker run -d -p 80:80 jaytg/sre_105:latest

## Docker file to automate the process of building customised image - Building a Microservice with Docker
- Crio - Rocket - Docker
- Automate image building of our customised nginx image
- Create a `Dockerfile`in the same location where our index.html is
- Decide which base image to use for your image
- Test the image locally to ensure it works 
- If all good then push to dockerhub

Dockerfile code
`````docker
# select base image
FROM nginx

# Label it - add optional details
LABEL MAINTAINER=JAY

# copy the data for localhost to container 
COPY index.html /usr/share/nginx/html/
# copy index.html to usr/share/nginx/html/

# expose the require port  - port 80
EXPOSE 80

# launch the app
CMD ["nginx", "-g", "daemon off;"]
# CMD will run the commannd in this case to launch the image when we create a container
```````

## Create a docker image from a api
Follow this tutorial https://docs.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows

-Add a docker in the project's root folder rewrite the dll file to successfully execute 

````docker
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "<File_Name>.dll"]
`````

- Open bash in the project folder
- Build it `docker build <image_name>`
- Run it `docker run <image_name>`

### My api docker image
https://hub.docker.com/r/jaytg/105_sre_northwind_api
`docker run -d -p 80:80 jaytg/105_sre_northwind_api`

## Kubernetes (K8)

Kubernetes, often abbreviated as ???K8s???, orchestrates containerized applications to run on a cluster of hosts. The K8s system automates the deployment and management of cloud native applications using on-premises infrastructure or public cloud platforms.

````
services: deployment, service, pods, replicasets, crobjob, autoscalinggroup, horizontal pod scaling group (HPA)
kubectl get <service_name> - deployment - pod - rs
kubectl get deploy <nginx_deploy> (nginx_svc)
kubectl get pods 
kubect describe pod <pod_name>
`````

### Clusters 
A Kubernetes cluster is a set of nodes that run containerized applications. Containerizing applications packages an app with its dependences and some necessary services. They are more lightweight and flexible than virtual machines.

![unknown](https://user-images.githubusercontent.com/87706066/161016905-5a3c9bdd-616a-434f-9dd9-9c92d8389a22.png)

### Load Balancers
The Kubernetes load balancer sends connections to the first server in the pool until it is at capacity, and then sends new connections to the next available server. This algorithm is ideal where virtual machines incur a cost, such as in hosted environments.

![k8](https://user-images.githubusercontent.com/87706066/160861039-bab7f6ee-2099-4b18-9294-9a6755dec9bb.png)

### Enabling Kubernetes
- Open Docker Desktop on go to settings
- Go to Kubernetes and tick Enable Kubernetes and Show system containers
- Kubernetes should start running after a few mintues 
- Check to see if it's running by entering the command `kubectl get svc` or `kubectl get service`

This output should look like this

![Screenshot 2022-03-30 135214](https://user-images.githubusercontent.com/87706066/160838741-4606044b-d75e-425a-8baf-3e6849b75993.png)

- If it's not running restart docker or restart your local machine (check the memory too)
- If all those solutions are not working you have to change the host file add 127.0.0.1 host.docker.internal at the end. Check this solution https://github.com/kubernetes/kubectl/issues/874#issuecomment-1080857862 and with help editing the host file go to this page https://www.groovypost.com/howto/edit-hosts-file-windows-10/



### Creating YML

YAML is a human-readable data-serialization language. It is commonly used for configuration files and in applications where data is being stored or transmitted.

[YML Detail explaination link](yml.md)

- Deployment file example [Nginx Deployment File Link](Nginx-deploy/nginx_deployment.yml)
- Create a deployment `kubectl create -f nginx_deployment.yml` 
- Service file example [Nginx Service File Link](Nginx-deploy/nginx_svc.yml)
- Create a service `kubectl create -f nginx_svc.yml` 

### YML API Task
[api-folder Link](api-deploy)

- Api deveployment file
```yml
# YML is case sensitive - indetation of YML is important
# use spaces not a tab
apiVersion : apps/v1 # which api to use for deployment
kind: Deployment # what kind of service/object you want to create

# what would you like to call it
metadata: 
  name: api-deployment # naming the deployment
spec: 
  selector: 
    matchLabels:
      app: api # look for this label to match with k8 service
    
  # Let's create a replica set of this with 2 instances/pods
  replicas: 3

  # template to use it's label set of K8 service to launch in the browser
  template:
    metadata: 
      labels:
        app: api # This label connects to the service of any other k8 components
  # Let's define the container spec
    spec:
     containers:
     - name: api
       image: jaytg/105_sre_northwind_api:latest
       ports: 
       - containerPort: 80
       
```
- Api service file 
```yml
apiVersion : v1 # which api to use for deployment
kind: Service # what kind of service/object you want to create
#Metadata for name
metadata:
  name: api-svc
  namespace: default 
# Specification to include ports selector to connect to the deployment
spec:
  ports:
  - nodePort: 30443
    port: 50 # target for the local host 
    protocol: TCP
    targetPort: 80 # target for all users

# Let's define the selector and html and label to connect to nginx deployment
  selector:
   app: api # this label connects this service to deployment
  
  # Creating LoadBalancer type of deployment
  type: LoadBalancer

```

### Minikube
minikube is a tool that lets you run Kubernetes locally. minikube runs a single-node Kubernetes cluster on your personal computer (including Windows, macOS and Linux PCs) so that you can try out Kubernetes, or for daily development work.

### K8 Cluster API diagram

![k8 api](https://user-images.githubusercontent.com/87706066/161084317-6993cd6b-aba0-47a8-946e-5a318a5579e8.png)

### K8 Cluster API On EC2 Instance
- Follow the tutorial https://www.radishlogic.com/kubernetes/running-minikube-in-aws-ec2-ubuntu/ to know requirents for creating the EC2 instance
- Connect to your instance and create a new directory with `mkdir`
- Disconnect from the instance and copy your deployment yml file to the new directory from your local to the instance `scp -i ~/.ssh/105.pem <file_path>/<file_name> ubuntu@ec2-<public_ip>.<region_code>.compute.amazonaws.com1:~/<folder_name> 
- Go back to the tutorial follow instructions on how to install Docker, Kubectl and minikube in Linux 
- If you get the error `Sorry, Kubernetes v1.18.2 requires conntrack to be installed in root's path` enter this command `sudo apt-get install -y conntrack`
- After becoming a root user `sudo -i` go back to the directory containing the yml file `cd home/ubuntu/<folder_name>
- Create a deployment `kubectl create -f <file_name>.yml`
- Expose the deployment `kubectl expose deployment api-deployment --type=NodePort` (NodePort is required)
- get the created service `kubectl get svc`
- Copy the outbound port 

![Screenshot 2022-03-31 174051](https://user-images.githubusercontent.com/87706066/161106762-bbf14c0f-8b10-4af8-8017-4438395b4399.png)

- Check if it working on the browser enter <public_ip>:<port> in the search bar


### K8 Command Documentation
https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands

### stateless and stateful (Nacl and security group)
- Nacl is stateless and Security Group is stateful.
- stateless means that any changes applied to an incoming rule isn't automatically applied to an outgoing rule.
- Example: If a request comes through port 80, it should be explicitly indicated that its outgoing response would be the same port 80.
 - stateful means that any changes which are applied to an incoming rule is automatically applied to a rule which is outgoing.
 - Example: If the incoming port of a request is 80, the outgoing response of that request is also 80 (it is opened automatically) by default.
