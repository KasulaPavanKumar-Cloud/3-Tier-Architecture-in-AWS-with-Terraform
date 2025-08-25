
resource "aws_instance" "app" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_app.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y openjdk-11-jdk tomcat9 tomcat9-admin
              sudo systemctl enable tomcat9
              sudo systemctl start tomcat9
              EOF

  tags = {
    Name = "${var.project_name}-AppServer"
  }
}
