resource "aws_route_table_association" "sample-rt-public-associate" {
  subnet_id = aws_subnet.sample-subnet-public-01.id
  route_table_id = aws_route_table.sample-rt-public.id
}

resource "aws_route_table_association" "sample-rt-private-associate-01" {
  subnet_id = aws_subnet.sample-subnet-private-01.id
  route_table_id = aws_route_table.sample-rt-private-01.id
}

resource "aws_route_table_association" "sample-rt-private-associate-02" {
  subnet_id = aws_subnet.sample-subnet-private-02.id
  route_table_id = aws_route_table.sample-rt-private-01.id
}


