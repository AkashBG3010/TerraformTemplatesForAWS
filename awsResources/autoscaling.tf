resource "aws_launch_template" "autoscaling" {
  name_prefix   = "autoscaling"
  image_id      = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "asgroup" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.autoscaling.id
    version = "$Latest"
  }
}
