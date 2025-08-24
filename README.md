# 3-Tier-Architecture-in-AWS-with-Terraform


---

## 🚀 Features

- ✅ Highly Available across multiple Availability Zones
- ✅ Fully modular Terraform code (VPC, EC2, RDS, ALB, etc.)
- ✅ Uses remote state with locking (S3 + DynamoDB)
- ✅ Security best practices (private subnets, security groups)
- ✅ Autoscaling enabled for app tier
- ✅ Easily customizable and reusable

---

## 🛠️ Technologies Used

- **Terraform v1.x**
- **AWS EC2, ALB, RDS, VPC, Subnets, Security Groups, etc.**
- **S3 & DynamoDB for remote backend (optional)**

---

## 📁 Project Structure

```bash
3-tierwithTerraform/
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── rds/
│   └── alb/
├── environments/
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── .gitignore
├── README.md
└── terraform.tfvars


🧪 Prerequisites

AWS CLI configured (aws configure)

Terraform installed (terraform -v)

AWS IAM user with appropriate permissions

📦 How to Deploy
# 1. Initialize Terraform
terraform init

# 2. Format and validate code
terraform fmt
terraform validate

# 3. Plan infrastructure changes
terraform plan -out=tfplan

# 4. Apply the plan
terraform apply tfplan

🧹 Cleanup
terraform destroy

⚠️ Important Notes

The .terraform/ directory and provider binaries are excluded from version control.

Do not commit secrets or sensitive variables.



📝 License

This project is open source under the MIT License.
