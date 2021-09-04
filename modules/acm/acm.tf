resource "aws_acm_certificate" "cert" {
  domain_name = var.domain_name
  # zone_id           = data.aws_route53_zone.main.id
  validation_method = "DNS"
  subject_alternative_names = [
    "*.minhpn08.com",
  ]

  tags = {
    Name = "minhpn08.com"
  }
}

