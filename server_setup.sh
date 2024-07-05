# Update the package cache
sudo yum update -y

# Install Git
sudo yum install git -y

# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install AWS CLI v2 (latest version)
sudo yum install aws-cli

# Verify installation
docker --version
docker-compose --version
aws --version
