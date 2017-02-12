resource "aws_instance" "ec2_create" {
  ami = "${var.aws_amis}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"
  iam_instance_profile = "${var.iam_instance_profile}"
  vpc_security_group_ids = ["${split(",", var.security_group)}"]
  tags {
    contact = "<>owner_email_id"
    department = "my_department"
	}
}

resource "aws_ebs_volume" "ebs_create" {
  availability_zone = "${var.ebs_az}"
  size = "${var.ebs_size}"
  encrypted= true
  type = "${var.ebs_type}"
  tags {
    name = "my-ebs-vol"
	}
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/<name>"
  volume_id = "${aws_ebs_volume.ebs_create.id}"
  instance_id = "${aws_instance.ec2_create.id}"
}