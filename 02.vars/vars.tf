variable "sample" {
    default = "Welcome to Terraform"
}

output "sample-op" {
    value = var.sample
}

output "sample-op-var" {

    value = "the value of variable is ${var.sample}"
}