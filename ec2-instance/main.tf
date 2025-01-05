resource "aws-instance" "ec2"{
    ami = var.ami
    instance_type=var.instance_type
    key_name="k1.pem"
    tags={
        Name=var.instance_name
    }
}