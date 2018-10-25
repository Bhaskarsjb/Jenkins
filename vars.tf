variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "CidrBlock" { 
  default = "10.0.0.0/16"
}

variable "pubSubnetCIDR" {
  default = "10.0.0.0/24"
}

variable "priSubnetCIDR" {
  default = "10.0.1.0/24"
}

variable "PATH_TO_CREDENTIAL" {
  default = "/home/ubuntu/terraform-repo/.aws/config"
}

variable "AMIS" {
  type = "map"
  default = {
#    ap-south-1 = "ami-7c8ead13"
    ap-south-1 = "ami-5b673c34"
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "aws_key_pair" {
  default = "EC2-MUMBAI-KEY-PAIR"
}

variable "chef_provision" {
  type                      = "map"
  description               = "Configuration details for chef server"


  default = {
    server_url              = "https://api.chef.io/organizations/bhaskar-sjb"
    user_name               = "bhaskar-sjb"
    user_key_path           = "/home/ubuntu/chef-repo/.chef/bhaskar-sjb.pem"
    recreate_client         = "true"
    }
}

variable "private_key" {
  default = "EC2-MUMBAI-KEY-PAIR.pem"
}

variable "DBInstanceId" {
  default = "rds-mysql-inst01"
}

variable "DBName" {
  default = "wpdb01"
}

variable "DBEngine" {
  default = "MySQL"
}

variable "DBUserName" {
  default = "dbuser"
}

variable "DBUserPass" {
  default = "dbuserpass" 
}

variable "DBStorage" {
  default = "20"
}

variable "DBInstanceClass" {
  default = "db.t2.micro"
}



