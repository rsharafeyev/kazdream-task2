job "hello-world" {
  datacenters = ["dc1"]

  group "demo" {
    count = 2
    network {
      port "http" {
        to = -1
      }
    }

    service {
      name = "hello-world"
      port = "http"

      check {
        type     = "http"
        path     = "/"
        interval = "2s"
        timeout  = "2s"
      }
    }

    task "server" {
      env {
        PORT    = "${NOMAD_PORT_http}"
        NODE_IP = "${NOMAD_IP_http}"
      }

      driver = "docker"

      config {
        image = "rsharafeyev/hello-world"
        ports = ["http"]
      }
    }
  }
}