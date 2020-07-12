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
            steps {
                echo 'Docker-build' //com
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy-test'
            }
        }
    }
}