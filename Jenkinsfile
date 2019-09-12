pipeline {
    agent { docker 'python:3' }
    options {
        skipDefaultCheckout true
    }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}
