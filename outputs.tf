output "subnet_id" {
  value = module.vpc.private_subnets
}
output "sg_id" {
  value = module.sg.sg_id
}