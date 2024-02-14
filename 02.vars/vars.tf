variable "sample" {
    default = "Welcome to Terraform"
}

output "sample-op" {
    value = var.sample
}

output "sample-op-var" {

    value = "the value of variable is ${var.sample}"
}

variable "example-list" {
    default = [
        "Richelle",
        "maria",
        "Dsouza",
        26
    ]
}

output "example_list_op" {
    value = "My name is ${var.example_list[0]} ${var.example_list[1]} ${var.example_list[2]} born on ${var.example_list[3]}"
}