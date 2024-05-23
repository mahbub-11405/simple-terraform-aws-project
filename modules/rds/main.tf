resource "aws_db_subnet_group" "example" {
  name       = "example"
  subnet_ids = var.subnet_id
}

data "aws_rds_engine_version" "mysql" {
  engine = "mysql"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = data.aws_rds_engine_version.mysql.version
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "admin"
  password             = "password"
  db_subnet_group_name = aws_db_subnet_group.example.name
}

output "rds_instance_id" {
  value = aws_db_instance.default.id
}

