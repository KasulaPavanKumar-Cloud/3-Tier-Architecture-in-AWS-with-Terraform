
# -----------------------
# EC2 Instances
# -----------------------
resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y nginx
              sudo systemctl enable nginx
              sudo systemctl start nginx
              echo "<h1>Welcome to 3-tier Web Server</h1>" | sudo tee /var/www/html/index.html
              EOF

  tags = {
    Name = "${var.project_name}-WebServer"
  }
}
