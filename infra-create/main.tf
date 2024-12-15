resource "aws_instance" "tool"{
  ami = data.aws_ami.rhel9.image_id
  instance_type = var.instance_type
  iam_instance_profile =  aws_iam_instance_profile.instance_profile.name
  vpc_security_group_ids = [aws_security_group.tool-sg.id]

  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type = "persistent"
    }
  }
  root_block_device {
    volume_size = var.volume_size
  }
  tags = {
    Name = var.name
  }
}

resource "aws_security_group" "tool-sg"{
  name = "${var.name}-sg"
  description = "${var.name}-sg"

  egress{
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}