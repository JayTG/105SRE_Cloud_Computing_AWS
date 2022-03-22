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
- add a name 
- add security groups:
 - make sure to restrict access in SSH selecting proper port
 - allow access to VM through HTTP
- Launch and connect following the instrcutions from AWS

### Using the VM
- Run: sudo apt-get update -y
- Run: sudo apt-get upgrade -y
- Run: sudo apt-get install nginx -y
- Check that it ws installed successfully by the public ip in the browser



