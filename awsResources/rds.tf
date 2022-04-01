provider"aws"{
        access_key="AKIARH6HUPIOW3VOWV54"
        secret_key="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"
        region="us-east-1"
}

resource "aws_db_instance" "terraformdb" {
  allocated_storage    = 20
  storage_type		="gp2" 
  engine               = "mysql"
  engine_version       = "8.0.19"
  instance_class       = "db.t2.micro"
  db_name              = "DBTERRAFORMDEMO"
  username             = "andy"
  password             = "12345678"
  skip_final_snapshot  = true
}
