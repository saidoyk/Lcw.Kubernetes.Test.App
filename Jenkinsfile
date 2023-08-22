pipeline {

  environment {
    dockerimagename = "saidoyk/kubetnetes-saidoyk-myapp"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/saidoyk/Lcw.Kubernetes.Test.App'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build dockerimagename
        }
      }
    }

    stage('Pushing Image') {
      environment {
               registryCredential = 'dockerhublogin'
           }
      steps{
        script {
          docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
            dockerImage.push("myfirst")
          }
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "lcw-test-app-deploy.yml", kubeconfigId: "kubernetes")
        }
      }
    }

    stage('Service app to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "lcw-test-app-svc.yml", kubeconfigId: "kubernetes")
        }
      }
    }

  }

}