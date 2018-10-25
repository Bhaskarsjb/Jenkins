resource "aws_route53_zone" "bhaskar-ga" {
   name = "bhaskar.ga"
}
resource "aws_route53_record" "www-record" {
   zone_id = "${aws_route53_zone.bhaskar-ga.zone_id}"
   name = "www.bhaskar.ga"
   type = "A"
   ttl = "300"
   records = ["13.232.165.199"]
}

output "ns-servers" {
   value = "${aws_route53_zone.bhaskar-ga.name_servers}"
}
