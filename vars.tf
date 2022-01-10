variable "ami" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}
variable "sec_groups" {
  type    = list(string)
  default = ["sg-02a869677de56b443"]
}

variable "main_security_group" {
  type    = list(string)
  default = ["sg-08820d296b975e6a3", "sg-02a869677de56b443", "sg-b13069c3"]
}
variable "fortigate_ami" {
  type    = string
  default = "ami-0d5eff06f840b45e9"
}

variable "ubuntu_ami" {
  type    = string
  default = "ami-0e472ba40eb589f49"
}


variable "wss" {
  type    = string
  default = "sg-08820d296b975e6a3"
}

variable "terraformweb" {
  type    = string
  default = "sg-02a869677de56b443"
}

variable "ssh_only" {
  type    = string
  default = "sg-b13069c3"
}

variable "jenkins_ci" {
  type    = string
  default = "sg-0b72393b350a73d32"
}

variable "snet_web_sg" {
  type    = string
  default = "sg-51366f23"
}

variable "security_group_tw" {
  type    = string
  default = "	sg-02a869677de56b443"
}
variable "aws_ssh" {
  type    = string
  default = "sg-b13069c3"
}
variable "wg_sg" {
  type    = string
  default = "sg-08820d296b975e6a3"
}
variable "snetta-vpc-id" {
  default = "vpc-cfc26fb7"
  type    = string
}
variable "SNETTA-PUBLIC-1" {
  default = "subnet-cb16e3e4"
  type    = string
}
variable "SNETTA-PUBLIC-2" {
  default = "subnet-9b5fe8d0"
  type    = string
}
variable "SNETTA-PRIVATE-1" {
  default = "subnet-e62edbc9"
  type    = string
}
variable "SNETTA-PRIVATE-2" {
  default = "subnet-515ceb1a"
  type    = string
}
variable "sgi_port" {
  type        = list(number)
  description = "adding Security group for ports"
  default     = [22, 443, 8080, 541, 3000, 80]
}
variable "associate_public_ip_address" {
  description = "associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}
variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC"
  type        = string
  default     = null
}
variable "ipv6_addresses" {
  description = "Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface"
  type        = list(string)
  default     = null
}
variable "secondary_private_ips" {
  description = "A list of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e. referenced in a `network_interface block`"
  type        = list(string)
  default     = null
}


