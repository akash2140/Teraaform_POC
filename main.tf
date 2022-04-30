# Version is optional
provider "aws" {
    region = "us-east-1"
    # Storing the access keys as hard coded. Not recommended.
    access_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
}

# syntax for allocating a resource in AWS
# resource "<providername>_<resourcetype>" "name"{
# 		provide all the config options.....(going to be key value pairs only)
# 		key="value1" & simply like that only
# 	}	


resource "aws_instance"	"terraforminstance"{
			  ami           = "ami-04505e74c0741db8d"
			  instance_type = "t2.micro"

			  tags = {
    				Name = "terraforminstance"
                    DeletionCriteria = "Dont' Delete"
  			}
		}

     
