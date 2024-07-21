
resource "aws_lightsail_instance" "server" {
  name = "Terraform_server"
  #blueprint_id = "centos_stream_9"
  #blueprint_id = "ubuntu_22_04"
  //blueprint_id = "debian_12"
  #blueprint_id = "alma_linux_9"
  #blueprint_id = "amazon_linux_2023"
  blueprint_id = "amazon_linux_2"
  bundle_id    = "micro_1_0"
  #bundle_id         = "small_1_0"
  availability_zone = "us-east-1b"
  key_pair_name     = aws_lightsail_key_pair.lamp_key.name

  //snapsshot_name = "LAMP_image_w9_7202024"
  //user_data = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"

  tags = {
    //"Name"       = "Terraform_server_demo"
    "env"        = "Dev"
    "Team"       = "DevOps"
    "Created by" = "Robert TEMTA"
  }

}




/*
# Creating a Lightsail instance with Automatic snapshot

resource "aws_lightsail_instance" "server" {
  name = "Terraform_server"
  blueprint_id = "amazon_linux_2"
  bundle_id    = "micro_1_0"
  #bundle_id         = "small_1_0"
  availability_zone = "us-east-1b"
  key_pair_name     = aws_lightsail_key_pair.lamp_key.name

  # This argument take the snapshot

  add_on {
    type          = "AutoSnapshot"
    snapshot_time = "06:00"
    status        = "Enabled"
  }


  tags = {
    "env"        = "Dev"
    "Team"       = "DevOps"
    "Created by" = "Robert TEMTA"
  }

}
*/