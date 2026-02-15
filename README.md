# terraform-actions-demo
Demonstrates Terraform managing day 2 infrastructure with Actions on AWS by invalidating CloudFront after S3 updates.

📦 Terraform AWS Actions Demo

This repo demos using Terraform Actions to create a simple workflow in-code for an AWS usecase. When an S3 object (index.html) is updated, Terraform automatically triggers a CloudFront cache invalidation, without external scripts or manual CLI commands. 
