variable "bucket_name" {}

variable "acl_value" {
    default = "private"
}


variable "aws_access_key" {
default = "AKIAYWDMJRSZLU4PXCPG"
}
variable "aws_secret_key" {
default = "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"
 }
variable "region" {
    default = "eu-west-3"
}

variable "vpc_cidr" { 
}

variable "redshift_subnet_cidr_first" { 
}

variable "redshift_subnet_cidr_second" { 
}

#Redshift Cluster
variable "rs_cluster_identifier" { }
variable "rs_database_name" { }
variable "rs_master_username" { }
variable "rs_master_pass" { }
variable "rs_nodetype" { }
variable "rs_cluster_type" { }


