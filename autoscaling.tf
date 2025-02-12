data "template_file" "init" {
  template = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /home/ec2-user/hello.txt
              EOF
}

resource "aws_launch_template" "web" {
  name = "web-lt"

  image_id      = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  user_data = base64encode(data.template_file.init.rendered)

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "web" {
  min_size            = 1
  max_size            = 3
  desired_capacity    = 2
  force_delete        = true
  vpc_zone_identifier = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "web-instance"
    propagate_at_launch = true
  }
}