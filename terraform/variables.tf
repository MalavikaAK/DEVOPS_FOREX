variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment tag (dev, staging, production)"
  type        = string
  default     = "production"
}

variable "frontend_bucket_name" {
  description = "Globally unique S3 bucket name for frontend hosting"
  type        = string
  default     = "forex-frontend-prod-2025"  # ← Change this to something unique!
}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
  default     = "forexdb"
}

variable "db_username" {
  description = "RDS admin username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "RDS admin password (stored in Secrets Manager, not hardcoded)"
  type        = string
  sensitive   = true
}
