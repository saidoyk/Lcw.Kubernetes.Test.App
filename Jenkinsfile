pipeline {

  environment {
    workDir = "C:\lcw-1\Lcw.Kubernetes.Test.App"
  }

  agent any

  stages {

    stage('change directory') {
      steps {
        sh 'cd $workDir'
      }
    }

    stage('Checkout Source') {
      steps {
        sh 'git reset --hard origin/master'
      }
    }

    stage('Build image') {
      steps{
        script {
          sh 'docker build -t saidoyk/kubetnetes-saidoyk-myapp:latest .' 
        }
      }
    }

    stage('Pushing Image') {
      environment {
               registryCredential = 'dockerhublogin'
           }
      steps{
        script {
          sh 'docker push -t saidoyk/kubetnetes-saidoyk-myapp:latest ' 
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