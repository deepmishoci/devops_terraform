resource "aws_instance" "my_instance"{
ami_id="xxxxxxx"
instance_type="t3.micro"
}

resource "aws_vpc" "myVPC"{
cidr_block="10.0.0.0/16"
}
