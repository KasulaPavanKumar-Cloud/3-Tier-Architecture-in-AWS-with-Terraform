region                 = "us-east-1"
vpc_cidr               = "10.0.0.0/16"

public_subnet_cidr     = "10.0.1.0/24"
private_app_subnet_cidr = "10.0.2.0/24"
private_db_subnet_cidr  = "10.0.3.0/24"

availability_zone_1    = "us-east-1a"
availability_zone_2    = "us-east-1b"

instance_type          = "t3.micro"
ami                    = "ami-08c40ec9ead489470" # Ubuntu 22.04 AMI (us-east-1)
key_name               = "pavankey"
project_name           = "3-tier-Terra"
