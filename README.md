# Cloud Architecture — AWS Labs Portfolio

This repository is a curated portfolio of hands-on AWS architecture labs implemented with Terraform. It's organized as individual labs (modules) that demonstrate practical patterns used in production: networking, high-availability, serverless, containers, event-driven systems, and more. 

**Repository layout**

- [00-setup](00-setup/README.md): Terraform backend setup (S3 + DynamoDB) for remote state.
- [01-vpc-networking](01-vpc-networking/README.md): Production-ready VPC with public/private subnets, NAT, route tables, NACLs, and security groups.
- [02-web-server](02-web-server/README.md): ALB + Auto Scaling Group + EC2 web servers.
- [03-serverless-api](03-serverless-api/README.md): API Gateway + Lambda + DynamoDB CRUD API.
- [04-three-tier-app](04-three-tier-app/README.md): ALB -> ECS Fargate -> Aurora PostgreSQL + ElastiCache.
- [05-static-website](05-static-website/README.md): S3 origin + CloudFront distribution, optional ACM/Route53.
- [06-event-driven](06-event-driven/README.md): S3 -> EventBridge -> SNS -> SQS -> Lambda consumers.
- [07-multi-region-ha](07-multi-region-ha/README.md): Multi-region failover architecture with Route53, ALBs, Aurora Global DB, and S3 CRR.

Getting started
---------------

Prerequisites

- Install Terraform (recommended >= 1.0)
- Configure AWS credentials (`aws configure` or environment variables) with an account that can create resources.
- Install the AWS CLI for convenience (optional).

Recommended workflow

1. Start with `00-setup` to create or configure the remote backend (S3 + DynamoDB) used for state locking.
2. Apply `01-vpc-networking` to provision the networking baseline.
3. Continue with higher-level labs that depend on the VPC (e.g., `02-web-server`, `04-three-tier-app`).

