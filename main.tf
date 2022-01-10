resource "aws_instance" "simple-servers" {
  ami                         = var.ami
  subnet_id                   = data.aws_subnet.sub1.id
  instance_type               = "t2.medium"
  associate_public_ip_address = true
  security_groups             = var.main_security_group
  key_name                    = "Terra"
  tags = {
    Name = "SNETTA-ec2-terraform-poc-kubectl-master-controller"
    #
  }
}

output "jenkins_terraform" {
  value = "running Terraform From Master Server"
}