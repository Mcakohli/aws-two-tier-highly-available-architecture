# Secure & Highly Available Two-Tier AWS Architecture

A production-ready, highly available two-tier web application infrastructure deployed on AWS, inspired by the AWS Zero to Hero series.
![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/9f2dc3c2eddbf137d693951a8641dd3703714bea/aws-resource-map.png)

## 🏗️ Visualizing the Infrastructure
Here is the network layout generated from the AWS Console Resource Map, showcasing the secure multi-tier separation across Availability Zones:


![AWS Resource Map](your-exact-screenshot-name.png)

## 🚀 Verification & Traffic Testing
To validate the configuration, an end-to-end traffic test was run from a local GitBash terminal using `curl`, verifying that the Application Load Balancer successfully routes requests down to the private application layer:

![Terminal Validation](your-terminal-screenshot-name.png)

## 🔧 Technologies Used
- **Cloud Platform:** AWS (VPC, EC2, ALB, ASG, NAT Gateway)
- **OS/Server:** Linux (Ubuntu), Python HTTP Server, Bash scripting
- **Networking:** Route Tables, Subnets, Security Groups
