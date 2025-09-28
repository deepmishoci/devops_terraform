locals common_tags{
tags={
  Managed_By="Terraform"
  Project_Name="Terraform_Project"
}
resource "aws_instance" "my_instance"{
ami_id="xxxxxxx"
instance_type="t3.micro"
tags=merge(local.common_tags,{
Name="project_Instance"
}
}

resource "aws_vpc" "myVPC"{
cidr_block="10.0.0.0/16"
tags=merge(local.common_tags,{
Name="project_vpc"
}
}

resource "aws_subnet" "Project01_PublicSubnet"{
cidr_block="10.0.0.0/24"
vpc_id=aws_vpc.myVPC.id
tags=merge(local.commom_tags,{
Name="Project_PublicSubnet"
}

}
