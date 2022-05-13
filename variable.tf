#var file strng type
variable "region" {
description = "multiple regions"
type        = string
default     = "us-east-1"
}

variable "ami" {
description = "multiple regions"
default     = {
               us-east-1 = "ami-0022f774911c1d690"
               us-east-2 = "ami-0fa49cc9dc8d62c84"
}
}

variable "instance_type" {
description = "instance type t2.micro"
type        = string
default     = "t2.micro"
}

variable "instance_count" {
description = "no of instance"
type        = number
default     = "1"
}

variable "enable_public_ip" {
description = "allocating public ip"
type        = bool 
default     = true
}

variable "name" {
description = "tag name"
type        = string
default     = "pa1"
}

variable "user_names" {
description = "IAM USERS"
type        = list(string)
default     = ["king", "queen", "prince"]
}
