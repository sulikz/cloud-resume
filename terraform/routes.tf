resource "aws_route53_zone" "r53_zone" {
  name = var.domain_name
}

resource "aws_route53_record" "root-ipv4" {
  name    = var.domain_name
  type    = "A"
  zone_id = aws_route53_zone.r53_zone.zone_id
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www-ipv4" {
  name    = var.www_domain_name
  type    = "A"
  zone_id = aws_route53_zone.r53_zone.zone_id
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "root-ipv6" {
  name    = var.domain_name
  type    = "AAAA"
  zone_id = aws_route53_zone.r53_zone.zone_id
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www-ipv6" {
  name    = var.www_domain_name
  type    = "AAAA"
  zone_id = aws_route53_zone.r53_zone.zone_id
  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}
