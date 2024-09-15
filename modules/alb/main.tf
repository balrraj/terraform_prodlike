locals {
    tags = {
        ApplicationID = var.ApplicationID
        CostCentre  = Var.CostCentre
    }
}

resource "aws_lb" "application" {
  name               = var.alb_name
  internal           = true
  load_balancer_type = "application"

  enable_deletion_protection = var.enable_deletion_protection
  enable_https2 = var.enable_https2
  idle_timeout = var.idle_timeout
  security_groups    = var.security_groups
  subnets            = var.subnets
  tags = local.tags 
  }
