resource "aws_instance" "servers" {
    ami = "ami-058f6fc81d3a056e7"
    for_each = tomap(var.instance_type)
    instance_type = each.value
    key_name = "key77"
    security_groups = ["G_force"]

    tags = {
      Name = each.key
    }
   
}
