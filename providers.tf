terraform{
required_provider{
aws={
version="~>6.0"
source="hashicorp/aws"
}
}
}

provider "aws"{
region="ap-south-1"
}

