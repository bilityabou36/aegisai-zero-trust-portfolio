resource "aws_dynamodb_table" "ai_asset_registry" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = "AssetID"
  range_key = "Version"

  attribute {
    name = "AssetID"
    type = "S"
  }

  attribute {
    name = "Version"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled = true
  }

  deletion_protection_enabled = false

  tags = {
    Name               = var.table_name
    DataClassification = "Internal"
    Application        = "AI-Governance-Registry"
    Owner              = "Security-Engineering"
  }
}
