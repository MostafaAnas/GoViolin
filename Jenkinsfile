pipeline {
  environment {
    registry = "mostafahelal/goviolion"
    registryCredential = 'DockerHub-Creds'
    dockerImage = ''
  }

  agent any

  stages {
    stage('SCM checkout') {
      steps {
        git 'https://github.com/MostafaAnas/GoViolin'
      }
    }
    stage('Building image') {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Deploy Image') {
      steps {
        script {
          docker.withRegistry('', registryCredential) {
            dockerImage.push()
          }
        }
      }
    }
  }

}