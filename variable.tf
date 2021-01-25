variable "key" {
        description = "access key"
        type = string
        default="AKIAJNHQUL4UMMKOTU4A"
}

variable "skey" {
        description = "secret key"
        type = string
        default="GVU9UaMOhWm0xD7x84i49wZcv+KBhAAQrgxPNCn/"
}

variable "public_subnet" {
        description = "Select the Subnet for deploying resources"
        type = list(string)
        default=["subnet-026abd4bdccc011ba","subnet-03f8b40cfc812cc22"]
}

variable "ami" {
        description = "This will take available ami"
        type = string
        default="ami-0323c3dd2da7fb37d"
}

variable "type" {
        description = "This will provide type of ami"
        type = list(string)
        default=["t2.micro","m4.large"]
}

variable "vpc_id" {
        description = "Select the VPC ID"
        type = string
        default="vpc-06a6246c836bc7e04"
}


variable "sgroup" {
        description = "Attach Security Group"
        type = list(string)
        default=["sg-094b6cc5895f78d62"]
}






