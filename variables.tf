variable "tools" {
  default = {
    jenkins = {
      name = "github-runner-new"
      instance_type = "t3.small"
      policy_name = [
        "AdministratorAccess"
      ]
      volume_size = 20
      ports = {}
    }

    # vault = {
    #   name = "vault"
    #   instance_type = "t3.small"
    #   port_no = {
    #     vault = 8200
    #   }
    #   policy_action = []
    #   volume_size = 20
    # }

  #   minikube = {
  #     name = "minikube"
  #     instance_type = "t3.medium"
  #     ports = {
  #       vault = 8443
  #     }
  #     policy_name = []
  #     volume_size = 30      
  #   }
  # }
  # eks = {
  #   name = "eks-cluster"
  #   instance_type = "t3.medium"
  #   ports = {}
  #   volume_size = 30
  #   policy_name = []
  #  }
  }
}

variable "hosted_zone_id"{
  default = "Z085093733LY1YYTUF9Q4"
}