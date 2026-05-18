resource "aws_security_group" "allow_ssh" {
  name        = "allow-ssh-${var.environment}"
  description = "Allow SSH access - RESTRICT THIS TO YOUR IP IN PRODUCTION"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH from anywhere - CHANGE THIS"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TODO: Change to your IP: ["YOUR_IP/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-security-group-${var.environment}"
  }
}