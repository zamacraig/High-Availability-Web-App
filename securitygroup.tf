resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_public_a" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.public_subnet_a.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_public_b" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.public_subnet_b.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_private_a" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.private_subnet_a.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_private_b" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.private_subnet_b.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_tls_traffic_ipv4_public_a" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.public_subnet_a.cidr_block
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_tls_traffic_ipv4_public_b" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.public_subnet_b.cidr_block
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_tls_traffic_ipv4_private_a" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.private_subnet_a.cidr_block
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_tls_traffic_ipv4_private_b" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = aws_subnet.private_subnet_b.cidr_block
  ip_protocol       = "-1"
}


resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_http"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_internet" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_public_a" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = aws_subnet.public_subnet_a.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_public_b" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = aws_subnet.public_subnet_b.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_private_a" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = aws_subnet.private_subnet_a.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_private_b" {
  security_group_id = aws_security_group.allow_http.id
  cidr_ipv4         = aws_subnet.private_subnet_b.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}



















resource "aws_vpc_security_group_ingress_rule" "allow_http_traffic" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}