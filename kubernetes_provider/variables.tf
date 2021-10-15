variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "k8s.gcr.io/echoserver:1.10"
}

variable "app" {
  type        = string
  description = "Name of application"
  default     = "learniac"
}