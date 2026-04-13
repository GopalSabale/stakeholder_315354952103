module "my_ec2" {
  source      = "git::https://github.com/GopalSabale/aws_tf_modules.git//modules/ec2?ref=v1.1.2"
  instance_type = var.instance_type
  ami = var.ami
}
