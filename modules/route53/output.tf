output "api_domain" {
    value = aws_route53_record.example.name
}

output "id" {
    value = aws_route53_record.example.id
}