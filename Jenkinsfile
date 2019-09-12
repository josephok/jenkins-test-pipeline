pipeline {
    agent {
        docker {image 'python:3'}
    }
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
