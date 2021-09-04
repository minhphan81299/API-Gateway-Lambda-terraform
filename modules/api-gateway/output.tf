# output "api_gateway_name" {
#   value = var.api_gateway_name
# }
# output "api_url" {
#   value = "https://${var.api_gateway_domain_name}/${var.api_gateway_base_path}/${var.api_gateway_path_part}"
# }
# output "api_id" {
#   value = aws_api_gateway_rest_api.this.id
# }
# output "api_root_resource_id" {
#   value = aws_api_gateway_rest_api.this.root_resource_id
# }
# output "api_execution_arn" {
#   value = aws_api_gateway_rest_api.this.execution_arn
# }
# output "api_arn" {
#   value = aws_api_gateway_rest_api.this.arn
# }
output "regional_domain_name" {
    value = aws_api_gateway_domain_name.example.regional_domain_name
}
output "regional_zone_id" {
    value = aws_api_gateway_domain_name.example.regional_zone_id
}