################################################################################
# DynamoDB Table (IOT Data)
################################################################################

resource "aws_dynamodb_table" "this" {
  name = var.application_name

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "device_id"

  table_class = "STANDARD"

  attribute {
    name = "device_id"
    type = "S"
  }
}
