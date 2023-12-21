# Connect to ssh
ssh -i "lab-key.pem" ubuntu@ec2-[IP with dashes instead of dots].compute-1.amazonaws.com

# Update and Upgrade Ubuntu Packages
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Docker
sudo apt-get install docker.io -y
sudo apt-get install docker-compose -y
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo docker-compose up

# Clone GitHub Repository
mkdir myapp
git clone https://github.com/Chrisgr1/Codeclan22_W5_Project_Bucket_List.git myapp
cd myapp
mkdir secrets
cd secrets
touch db-root-password.txt
echo "password" > /home/ubuntu/myapp/secrets/db-root-password.txt
cd ..

sudo apt-get install python3 python3-pip -y
pip3 install -r requirements.txt
python3 app.py


# Using Docker Docker
sudo apt-get install docker.io -y
sudo apt-get install docker-compose #This is not correct
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo docker-compose up

# Optional tests
 sudo docker --version
  sudo docker-compose version
    sudo docker run hello-world
    sudo docker images
    sudo docker ps -a

# necessary?
sudo apt-get install curl 
sudo apt-get install gnupg 
sudo apt-get install ca-certificates 
sudo apt-get install lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


