data "aws_route53_zone" "main" {
  name = var.route53_name
}


# resource "aws_route53_record" "api" {
#   zone_id = data.aws_route53_zone.main.zone_id
#   name    = var.route53_record_name
#   type    = "CNAME"
#   records = [aws_db_instance.database.address]
#   ttl     = "300"
# }



resource "aws_route53_record" "example" {
  name    = var.route53_record_name
  type    = "A"
  zone_id = data.aws_route53_zone.main.zone_id

  alias {
    evaluate_target_health = true
    name                   = var.regional_domain_name
    zone_id                = var.regional_zone_id
  }
}