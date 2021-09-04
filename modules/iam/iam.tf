resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.lambda_role.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = "${file("../../modules/iam/lambda-policy.json")}"
#   policy = <<EOF 
#   {
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Action" : "sts:AssumeRole",
#         "Effect" : "Allow",
#         "Sid"    : "",
#         "Principal" : {
#           "Service" : "lambda.amazonaws.com"
#         }
#       }
#     ]
#   }
#   EOF
}

resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = "${file("../../modules/iam/lambda-assum-policy.json")}"
}