
terraform{
    required_providers{
        aws ={
            source="hashicorp/aws"
            version ="~>5.0"
        }        
        
    }
}

provider "aws"{
    region = var.aws_region
}

module "nexus_instance" {
    source="./ec2-instance"
    ami=var.aws_ami
    instance_type=var.aws_type
    instance_name="nexus"
}
module "sonar_instance" {
    source="./ec2-instance"
    ami=var.aws_ami
    instance_type=var.aws_type
    instance_name="sonar"
}
module "test_instance" {
    source="./ec2-instance"
    ami=var.aws_ami
    instance_type=var.aws_type
    instance_name="test"
}
