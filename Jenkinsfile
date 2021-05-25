pipeline {
    environment {
    registry = "mostafahelal/GoViolion"
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
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
        }
      }
    }

    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
}