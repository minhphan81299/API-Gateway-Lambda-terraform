module "iam"{
    source = "../../modules/iam"
}

module "route53" {
    source = "../../modules/route53"
    regional_domain_name=module.api-gateway.regional_domain_name
    regional_zone_id=module.api-gateway.regional_zone_id
}
module "api-gateway" {
    source = "../../modules/api-gateway"
    route53_recordname="api.minhpn08.com"
    lambda_function_invoke_arn=module.lambda.lambda_function_invoke_arn
    lambda_function_function_name=module.lambda.lambda_function_function_name
    api_gateway_domain_name="api.minhpn08.com"
    aws_region="ap-southeast-1"
}
module "lambda" {
    source = "../../modules/lambda"
    IAM_FOR_LAMBDA_ARN=module.iam.iam_for_lambda_arn
}