pipeline{
    agent any

    stages {
        stage('Check') {
            steps {
                script {
                    echo 'Check-test'
                }
            }
        }
        stage('Docker_build') {
            echo 'Docker-build'
        }
        stage('Deploy') {
            echo 'Deploy-test'
        }
    }
}