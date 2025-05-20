# Create-a-Highly-Available-3-Tier-Architecture-using-Terraform-
# Highly Available 3-Tier Architecture on AWS using Terraform

This Terraform project provisions a highly available 3-tier architecture on AWS, consisting of:

- **Presentation Tier:** User interface and communication layer (web servers behind an Application Load Balancer)
- **Application Tier:** Business logic and processing layer (EC2 instances in private subnets)
- **Database Tier:** Data storage and management (MySQL RDS instance in private subnets)

---

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

## Prerequisites

- AWS Account with an IAM user/role having programmatic access.
- AWS CLI configured with your credentials.
- Terraform v1.2.8 installed.
- Basic knowledge of AWS services and Terraform.
- SSH key pair created and referenced in Terraform (`key_name`).

---

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

---

