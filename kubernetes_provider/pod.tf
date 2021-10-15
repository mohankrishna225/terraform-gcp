
resource "kubernetes_pod" "example" {
  metadata {
    name = "example-test"
    labels = {
      App = "example"
    }
  }

  spec {
    container {
      image = "k8s.gcr.io/echoserver:1.10"
      name  = "example-test"

      port {
        container_port = 80
      }
    }
  }
}
