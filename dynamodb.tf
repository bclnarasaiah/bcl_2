resource "aws_dynamodb_table" "terraform-state-lock" {
  name = "engdevopsb03-terraform-lock"
  hash_key = "LockID"
  read_capacity = 5
  write_capacity = 5
 
  attribute {
    name = "LockID"
    type = "S"
  }
}