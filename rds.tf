
#RDS subnet group
resource "aws_db_subnet_group" "rds-subnet" {
  name       = "rds-subnet"
  subnet_ids = ["${aws_subnet.main-private-1.id}", "${aws_subnet.main-public-1.id}"]

  tags {
    Name = "rds-subnet"
  }
}

#RDS Instance

resource "aws_db_instance" "MySQL" {
  allocated_storage    = "${var.DBStorage}"   # 100 GB of storage, gives us more IOPS than a lower number
  engine               = "${var.DBEngine}"
  engine_version       = "5.7.23"
  instance_class       = "${var.DBInstanceClass}"    # use micro if you want to use the free tier
  name                 = "wpdb01"
  username             = "dbuser"   # username
  password             = "${var.DBUserPass}" # password
  db_subnet_group_name = "${aws_db_subnet_group.rds-subnet.name}"
  vpc_security_group_ids = ["${aws_security_group.allow-rds.id}"]
  storage_type         = "gp2"
  skip_final_snapshot = true   # skip final snapshot when doing terraform destroy
  tags {
      Name = "mysql-instance"
  }
}
