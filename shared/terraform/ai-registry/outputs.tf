output "ai_asset_registry_name" {
  description = "Name of the DynamoDB AI asset registry"
  value       = aws_dynamodb_table.ai_asset_registry.name
}

output "ai_asset_registry_arn" {
  description = "ARN of the DynamoDB AI asset registry"
  value       = aws_dynamodb_table.ai_asset_registry.arn
}

output "ai_asset_registry_id" {
  description = "ID of the DynamoDB AI asset registry"
  value       = aws_dynamodb_table.ai_asset_registry.id
}
