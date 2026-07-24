variable "aws_region" {
  description = "AWS Region where AegisAI resources will be deployed"
  type        = string
  default     = "us-west-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "AegisAI-Inventory"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition = contains(
      ["dev", "test", "stage", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, test, stage, or prod."
  }
}

variable "table_name" {
  description = "DynamoDB table name"
  type        = string
  default     = "aegisai-ai-asset-registry-dev"
}
