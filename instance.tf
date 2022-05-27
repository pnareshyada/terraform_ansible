resource "aws_instance" "ec2" {
    count = 3
    ami = var.ami
    instance_type = var.type
    availability_zone = var.zone
    vpc_security_group_ids = [aws_security_group.sg.id]
    # user_data = file("script.sh")
    key_name = var.key_pair
    tags = {
        Name = "First"
    }
}

resource "aws_instance" "ec2_a" {
    # count = 3
    ami = var.ami
    instance_type = var.type
    availability_zone = var.zone
    vpc_security_group_ids = [aws_security_group.sg1.id]
    user_data = file("script.sh")
    key_name = var.key_pair
    tags = {
        Name = "Second"
    }
}
resource "aws_instance" "ec2_b" {
    # count = 3
    ami = var.ami
    instance_type = var.type
    availability_zone = var.zone
    vpc_security_group_ids = [aws_security_group.sg1.id]
    user_data = file("ansible.sh")
    key_name = var.key_pair
    tags = {
        Name = "Ansible"
    }
}