Terraform module to provision an EC2 instance that is running Apache

Not intended for production use. Just showcasing how to create a custom module on Terraform Registry

```hcl
provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source          = "./terraform-aws-apache-example"
  vpc_id          = "vpc-00000000"
  my_ip_with_cidr = MY_OWN_IP/32"
  public_key      = "ssh-rsa AAAA..."
  instance_type   = "t2.micro"
  server_name     = "MyServer"
}

output "public_ip" {
  value = module.apache.public_ip
}
```