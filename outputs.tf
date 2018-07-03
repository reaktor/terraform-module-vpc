output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "public_subnet_ids" {
  value = ["${aws_subnet.public.*.id}"]
}

output "private_subnet_ids" {
  value = ["${aws_subnet.private.*.id}"]
}

output "subnet_availability_zones" {
  value = ["${aws_subnet.private.*.availability_zone}"]
}

output "private_route_table_ids" {
  value = "${aws_route_table.private.*.id}"
}

output "public_route_table_id" {
  value = "${aws_route_table.public.id}"
}
