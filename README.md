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
> Designed to allow application providers, ISVs, and vendors to quickly and securely host your applications – whether an existing application or a new SaaS-based application.
- Felxibility 
> Enables you to select the operating system, programming language, web application platform, database, and other services you need. 
- Robustness
> With AWS, you take advantage of a scalable, reliable, and secure global computing infrastructure, the virtual backbone of Amazon.com’s multi-billion dollar online business that has been honed for over a decade.
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
> Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined.
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
- The Monolith before micro services
- - Simple but has limitations and complexity
- - Heavy apps can slow down the start up time
- - Each update results into redeplying the full stack app
- - Challenging to scale up on demand
- - Fruitful for simple and lightweight apps

![1 Un9W-mw18NLtuQdsBNytJQ](https://user-images.githubusercontent.com/87706066/159909610-a5adb6e7-63c8-45b3-96ec-ccf416a2830f.png)

- The difference of scale out and scale up?
 - Scale out means to add new instances when the number of users increases. Scale up means to increase the specs (e.g. memory) when the size of what is being used in the instance is too high for the current specs#

![scale-out](https://user-images.githubusercontent.com/87706066/159910137-66baf563-cd52-46bc-93f5-325fef0b3207.jpg)

![scale-up](https://user-images.githubusercontent.com/87706066/159910233-6f3f3744-513d-4385-a8b3-5b361425dc28.jpg)

- Who is using Micro Services?
- - Amazon
- - Netflix
- - Uber
- - Ebay
- - Paypal
- - Twitter
 
 

