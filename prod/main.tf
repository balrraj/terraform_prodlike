provider "aws"{
    region ="ap-southeast-2"
}

module "webserver-alb"
    source = "../module/alb"
    environment = var.environment
    alb_name = "${var.environment}-Airflow-webserver-ALB"
    security