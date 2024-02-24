module "mongodb" {
    source      = "./ec2"
    COMPONENT   = "mongodb"
    APP_VERSION = "0.0.2"
}