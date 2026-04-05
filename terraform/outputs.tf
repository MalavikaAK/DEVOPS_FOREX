output "frontend_website_url" {
  description = "S3 static website URL for the React frontend"
  value       = "http://${aws_s3_bucket_website_configuration.frontend.website_endpoint}"
}

output "rds_endpoint" {
  description = "RDS PostgreSQL connection endpoint"
  value       = aws_db_instance.main.endpoint
  sensitive   = true
}

output "ecr_repository_url" {
  description = "ECR URL to push Docker images to"
  value       = aws_ecr_repository.backend.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.main.name
}

output "db_secret_arn" {
  description = "ARN of the Secrets Manager entry holding the DB password"
  value       = aws_secretsmanager_secret.db_password.arn
}
