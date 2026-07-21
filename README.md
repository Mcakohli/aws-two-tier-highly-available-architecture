# Secure & Highly Available Two-Tier AWS Architecture

A production-ready, highly available two-tier web application infrastructure deployed on AWS. This project demonstrates secure networking principles by isolating application servers in private subnets while utilizing an Application Load Balancer (ALB) to safely route external public traffic.

## 🏗️ Architecture Overview
![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/9f2dc3c2eddbf137d693951a8641dd3703714bea/aws-resource-map.png)


The infrastructure is built with high availability and security-in-depth principles:
- **Custom VPC:** A dedicated `10.0.0.0/16` network across multiple Availability Zones (AZs) to prevent single points of failure.

  ![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/33b785e460137d20e5ca68b09191ab9d6037b1a9/vpc%201.png).
  
  ![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/commit/9f2dc3c2eddbf137d693951a8641dd3703714bea).
  
- **Public Subnets:** Hosts the Application Load Balancer and a Bastion Host (Jump Server).
- **Private Subnets:** Completely isolates the web/application servers from the public internet.
- **NAT Gateway:** Allows instances in the private subnets to securely download updates without exposing them to inbound internet traffic.
![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/main/loadbalancer%20.png).

- **Auto Scaling Group (ASG):** Automatically monitors instance health and dynamically scales infrastructure to handle traffic demands.

## 🛡️ Security Implementation

- **Bastion Host / Jump Box:** Used as a secure administrative gateway to SSH into private instances.
![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/commit/9f2dc3c2eddbf137d693951a8641dd3703714bea).


![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/main/python.png).
- **Least Privilege Security Groups:** Traffic is strictly controlled (e.g., Application servers only accept HTTP traffic originating *from the Load Balancer security group*).

## 🚀 Deployment Steps
1. **Networking:** Created the custom VPC, internet gateway, subnets, and configured explicit public/private route tables.
2. **Compute Setup:** Configured a Launch Template with an Apache/Python bootstrap `user-data` script.
3. **Traffic Management:** Configured an Application Load Balancer targeting the Auto Scaling group across AZs.
4. **Troubleshooting Phase:** Resolved a routing mismatch where a public subnet was misassociated with a private route table, causing load balancer timeouts. Successfully verified target routing via `curl` and end-to-end HTTP validation.

## 🔧 Technologies Used
- **Cloud Platform:** AWS (VPC, EC2, ALB, ASG, NAT Gateway, IAM)
- **Operating System:** Linux (Ubuntu/Amazon Linux)
- **Web Server:** Python HTTP Server / Bash scripting
- **Networking:** Routing tables, CIDR blocks, Security Groups

  
  ![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/blob/main/browser-success%20terminal.png).
  
  ![AWS Resource Map](https://github.com/Mcakohli/aws-two-tier-highly-available-architecture/commit/9f2dc3c2eddbf137d693951a8641dd3703714bea).
  
## 📜 Automation Scripts
- [View the EC2 User Data Bootstrap Script](./scripts/user-data.sh) — Automates the private instance Python HTTP web server deployment on startup.

Key Learnings

• Security Groups vs Route Tables
• Bastion Host
• NAT Gateway
• ALB Health Checks
• Auto Scaling

Resources were terminated after validation to avoid unnecessary AWS charges.
