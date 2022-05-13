#terraform program for delpoy of machine image

provider "aws" {
region     = "${var.region}"
access_key = "AKIAYWXGDVCYR6E4ILDG"
secret_key = "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"

}

resource "aws_instance" "web" {
ami = "${lookup(var.ami, "us-east-1")}"

instance_type = "${var.instance_type}"
count         = "${var.instance_count}"
associate_public_ip_address = var.enable_public_ip


tags = {
name = "${var.name}"
}
}

resource "aws_iam_user" "aws" {
count = length(var.user_names)
name = var.user_names[count.index]
}
