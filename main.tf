module "tool-infra-create"{
   for_each = var.tools
   source = "./infra-create"
   instance_type = each.value["instance_type"]
   name = each.value["name"]
   volume_size = each.value["volume_size"]
   ports = each.value["ports"]
   hosted_zone = var.hosted_zone_id
   policy_name =  each.value["policy_name"]
}