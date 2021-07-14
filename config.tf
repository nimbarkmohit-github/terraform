terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "jenkins" {
  name         = "jenkins/jenkins:latest"
  keep_locally = true
}

resource "docker_container" "jenkins-container" {
  image = docker_image.jenkins.latest
  name  = "terraform-docker-jenkins"
  ports {
    internal = 8080
    external = 8001
  }
  volumes {
    container_path  = "/var/jenkins_home"
    host_path = "/home/earth/terraform/terraform-docker-jenkins/jenkins_home/"
    read_only = false
  }
}
