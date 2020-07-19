pipeline{
    environment {
        BUILD_DATE = sh(
            script: 'date +%m%d%Y',
            returnStdout: true
        ).trim()

        DOCKER_IMAGE_NAME = "twag"
    }

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
                script{
                    echo 'Building a docker image'

                    IMAGE_TAG = "${env.BUILD_DATE}_${env.GIT_COMMIT}"
                    echo "Image tag: ${IMAGE_TAG}"

                    // Build a docker image and pass a git commit id as a building argument
                    def docker_image = docker.build(
                        "${env.DOCKER_IMAGE_NAME}:${IMAGE_TAG}",
                        "--build-arg GIT_COMMIT=${env.GIT_COMMIT} .")
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy-test'
                script {
                    res = sh (
                        script: """
                        docker run --name twag -d ${env.DOCKER_IMAGE_NAME}:${IMAGE_TAG}
                        """,
                        returnStdout: true
                    ).trim()

                    echo "${res}"
                }
            }
        }
    }
}