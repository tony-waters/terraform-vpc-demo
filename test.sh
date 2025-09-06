private_ec2_ip=$(terraform output -raw private_ec2_ip)
public_ec2_ip=$(terraform output -raw public_ec2_ip)
echo "Public EC2 IP is: $public_ec2_ip"
echo "Private EC2 IP: $private_ec2_ip"

# upload private key to public ec2
sudo scp -i ~/.ssh/ec2_ssh.pem ~/.ssh/ec2_ssh.pem ec2-user@$public_ec2_ip:/home/ec2-user

# should be able to ssh into private ec2 from public ec2
echo "*** You are about to ssh into the Public EC2"
echo "*** Run the following command to ssh into the Private EC2 from there"
echo "*** ssh -i \"ec2_ssh.pem\" ec2-user@$private_ec2_ip"

# ssh into public ec2
ssh -i "~/.ssh/ec2_ssh.pem" ec2-user@$public_ec2_ip



