resource "aws_vpc" "myvpc" {
    cidr_block = "10.50.0.0/16"
    enable_dns_hostnames = true
    tags = {
       Name = "mytestvpc"
       Owner = "Raghu Chowdary"
       environment = "Dev" 

    }  
}
resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = "${aws_vpc.myvpc.id}"
    tags = {
      Name = "mytestvpc-igw"
    }
  
}