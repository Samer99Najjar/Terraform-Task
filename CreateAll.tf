module "WebServers" {
    source = "./WebServers/"
    AmiName= "ami-0caef02b518350c8b"
    InstenceType= "t2.micro"
    Zone = "eu-central-1"


}

module "LoadBalancers" {
    source = "./loadBalancers/"
    nameofiternal = "internalLB"
    nameofinternet = "externalLB" 
}

module "ApplicationServer" {
    source = "./ApplicationServer/"
    instancetype = "t2.micro"
    number = 4
}

#output "instance" {
 # value = module.LoadBalancers.aws_lb.second_LB
#}



resource "aws_s3_bucket" "mybucket" {
  bucket = "Mybucket"

  tags = {
    Name        = "mybucket"
  }
}

resource "aws_db_instance" "myrdsdb" {
  identifier = "mysqldatabase"
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  storage_type         = "gp2"
  username             = "admin"
  password             = "samer123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  multi_az = true
}

#resource "aws_rds_cluster" "RDS_SQL" {
 # cluster_identifier      = "aurora-cluster-demo"
  #engine                  = "aurora-mysql"
  #engine_version          = "5.7.mysql_aurora.2.03.2"
#  availability_zones      = ["eu-central-1"]
 # database_name           = "mydb"
 # master_username         = "foo"
 # master_password         = "bar"
 # backup_retention_period = 5
 # preferred_backup_window = "07:00-09:00"
#}

#resource "zpa_application_server" "test_app_server" {
 # name                          = "test1-app-server"
 # description                   = "test1-app-server"
 # address                       = "server1.acme.com"
#  enabled                       = true
#}