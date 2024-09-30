<<<<<<< HEAD
terraform {

  backend "s3" {
    bucket  = "examples3serverdemo"
    key     = "terraform.tfstate"
    region  = "eu-north-1"
    encrypt = true
  }
=======
terraform {  

  backend "s3" {
    bucket         	   = "examples3serverdemo"
    key              	   = "terraform.tfstate"
    region         	   = "eu-north-1"
    encrypt        	   = true
 } 
>>>>>>> main
}




