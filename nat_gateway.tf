##################### 
# NAT Gateway # 
##################### 
resource "aws_eip" "eip_nat" { 
# No need for 'vpc = true' as it's now default
tags = { 
Name = "eip1" 
} 
} 
resource "aws_nat_gateway" "nat_1" { 
allocation_id = aws_eip.eip_nat.id 
subnet_id = aws_subnet.public-web-subnet-2.id 
tags = { 
"Name" = "nat1" 
} 
} 
