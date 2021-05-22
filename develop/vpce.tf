// S3
resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.DevelopVPC.id
  service_name = "com.amazonaws.ap-northeast-1.s3"
}
