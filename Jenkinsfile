pipeline {
    agent { label 'python'}
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
