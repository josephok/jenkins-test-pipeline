pipeline {
    agent { label 'python'}
    options {
        skipDefaultCheckout true
    }
    stages {
        stage('build') {
            steps {
                sh 'ls /home'
                sh 'python3 --version'
            }
        }
    }
}
