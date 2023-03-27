resource "kubernetes_deployment" "example" {
  metadata {
    name = "example-deployment"
  }

  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "example-app"
      }
    }
    template {
      metadata {
        labels = {
          app = "example-app"
        }
      }
      spec {
        container {
          name = "example-container"
          image = "us-west2-docker.pkg.dev/awagngxggcievs4jukm56y3voiyife/quickstart-docker-repo/solution-image:tag1"
          ports {
            container_port = 3000
          }
        }
      }
    }
  }
}