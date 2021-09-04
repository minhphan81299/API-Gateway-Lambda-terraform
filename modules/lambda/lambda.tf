data "archive_file" "init" {
  type        = "zip"
  source_file = "index.js"
  output_path = "index.zip"
}


resource "aws_lambda_function" "test_lambda" {
  filename      = "index.zip"
  function_name = "index"
  role          = var.IAM_FOR_LAMBDA_ARN
  handler       = "index.handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
#   source_code_hash = filebase64sha256("outputs/index.zip")

  runtime = "nodejs14.x"

   
}