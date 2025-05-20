![WhatsApp Image 2025-05-20 at 03 50 35_01bae356](https://github.com/user-attachments/assets/4e86a2a4-4d06-4cf5-82ea-77cdeb6a503a)# Create-a-Highly-Available-3-Tier-Architecture-using-Terraform-

![Image](https://github.com/user-attachments/assets/b7a386cd-5eb5-4dbb-9642-11f5a9429581)

# Highly Available 3-Tier Architecture on AWS using Terraform

This Terraform project provisions a highly available 3-tier architecture on AWS, consisting of:

- **Presentation Tier:** User interface and communication layer (web servers behind an Application Load Balancer)
- **Application Tier:** Business logic and processing layer (EC2 instances in private subnets)
- **Database Tier:** Data storage and management (MySQL RDS instance in private subnets)

---
![Image](https://github.com/user-attachments/assets/7b1822d8-3bdb-47fb-b4ea-65c680c2570a)

## Overview

This project uses Terraform (v1.2.8) to automate and manage the AWS infrastructure for a scalable and fault-tolerant 3-tier application architecture.

The infrastructure includes:

- VPC with public and private subnets across two availability zones for high availability.
- Internet Gateway and NAT Gateway for internet access.
- Route tables and associations for public and private networking.
- Security groups for each tier with proper ingress and egress rules.
- EC2 instances for presentation and application tiers with Auto Scaling Groups.
- An Application Load Balancer (ALB) to distribute traffic to presentation tier instances.
- RDS MySQL database instance for the database tier within private subnets.

---
![Image](https://github.com/user-attachments/assets/d8056d97-3cbe-4c25-bcfa-f0aacd98754d)

## Prerequisites

- AWS Account with an IAM user/role having programmatic access.
- AWS CLI configured with your credentials.
- Terraform v1.2.8 installed.
- Basic knowledge of AWS services and Terraform.
- SSH key pair created and referenced in Terraform (`key_name`).

---
![Image](https://github.com/user-attachments/assets/cb2de401-dcf1-44cb-a9a0-16c127e9e945)
## Terraform Files Structure

| Filename                | Description                                 |
|-------------------------|---------------------------------------------|
| `provider.tf`           | AWS provider configuration                   |
| `vpc.tf`                | VPC resource definition                       |
| `igw.tf`                | Internet Gateway resource                     |
| `subnets.tf`            | Public and private subnets                    |
| `route_public.tf`       | Public route table and associations           |
| `nat_gateway.tf`        | NAT Gateway and Elastic IP                    |
| `route_private.tf`      | Private route table and associations          |
| `alb_sg.tf`             | Security group for Application Load Balancer |
| `app_sg.tf`             | Security group for Application tier EC2       |
| `web_sg.tf`             | Security group for Presentation tier EC2      |
| `db_sg.tf`              | Security group for Database tier               |
| `ec2.tf`                | EC2 instances for Presentation and Application tiers |
| `auto-scaling-group.tf` | Auto Scaling Group definitions                |
| `alb.tf`                | Application Load Balancer setup                |
| `rds.tf`                | RDS Database instance and subnet group        |


![Image](https://github.com/user-attachments/assets/cb2de401-dcf1-44cb-a9a0-16c127e9e945)




---

📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |

