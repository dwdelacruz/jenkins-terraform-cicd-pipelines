pipeline {
  agent { label 'linux'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('terraform init') { 
        steps { 
            sh 'sudo ./terraformw init'
        }
    }
    stage('terraform') {
      steps {
        sh 'sudo ./terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
