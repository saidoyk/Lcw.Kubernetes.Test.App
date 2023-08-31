pipeline {

  environment {
    dockerimagename = "saidoyk/kubetnetes-saidoyk-myapp"
    dockerImage = ""
  }

  agent any

  stages {
    stage('Checkout Source') {
      steps {
          script {
              bat 'if exist Lcw.Kubernetes.Test.App (git pull origin main)'
              bat 'if not exist Lcw.Kubernetes.Test.App (git clone https://github.com/saidoyk/Lcw.Kubernetes.Test.App.git)'
          }
        }
    }
    stage('Build image') {
      steps{
        script {
          bat 'docker build . -t my-web-app -f Lcw.Kubernetes.Test.App/Dockerfile'
        }
      }
    }
    
    stage('Tag image') {
      steps{
        script {
          bat 'docker tag my-web-app saidoyk/kubetnetes-saidoyk-myapp:latest'
        }
      }
    }
    
    stage('Push image') {
      steps{
        script {
            withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerpwd')]) {
    bat 'docker login -u ahmetsaidoyanik@icloud.com -p %dockerpwd%'
    bat 'docker push saidoyk/kubetnetes-saidoyk-myapp:latest'
}
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
            kubernetesDeploy(configs: "lcw-test-app-deploy.yaml", kubeconfigId: "kubernetes")
        }
      }
    }

    stage('Service app to Kubernetes') {
      steps {
        script {
            kubernetesDeploy(configs: "lcw-test-app-svc.yaml", kubeconfigId: "kubernetes")
        }
      }
    }

  }
}

