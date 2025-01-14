resource "aws_eip" "ip-for-ngw-01" {
  domain = "vpc"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = "ip-for-ngw-01"
  }
}

resource "aws_nat_gateway" "sample-ngw-01" {
  allocation_id = aws_eip.ip-for-ngw-01.id
  subnet_id = aws_subnet.sample-subnet-public-01.id
  tags = {
    Name = "sample-ngw-01"
  }
}

resource "aws_eip" "ip-for-ngw-02" {
  domain = "vpc"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    Name = "ip-for-ngw-02"
  }
}

resource "aws_nat_gateway" "sample-ngw-02" {
  allocation_id = aws_eip.ip-for-ngw-02.id
  subnet_id = aws_subnet.sample-subnet-public-02.id
  tags = {
    Name = "sample-ngw-02"
  }
}

