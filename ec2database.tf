
resource "aws_instance" "db" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_db.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y mysql-server
              sudo systemctl enable mysql
              sudo systemctl start mysql
              EOF

  tags = {
    Name = "${var.project_name}-DBServer"
  }
}
