pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'mattermost-app'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Simulanis-Dev-Jagadeesha/mattermost.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.DOCKER_IMAGE}")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    def app = docker.run("${env.DOCKER_IMAGE}", "-p 8065:8065")
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
