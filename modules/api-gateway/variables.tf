variable "lambda_function_invoke_arn"{
    type=string
}
variable "lambda_function_function_name"{
    type=string
}
variable "api_gateway_domain_name"{
    type=string
}

variable "route53_recordname"{
    type=string
}
variable "aws_region"{
    type=string
}
variable "api_gateway_path_part"{
    type=string
    default="dev"
}