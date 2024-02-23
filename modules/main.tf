module "ec2" {
  source = "./ec2"
  sg     = module.sg.sgid                               # Step 2: Pass the output declared in the source module to this root module
}

module "sg" {
  source = "./sg"
}

output "public_ip_address" {
  value  = module.ec2.public_ip                          # This is going to fetch the declared output and prints
}