pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Simulanis-Dev-Jagadeesha/mattermost.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('mattermost-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('mattermost-app').run('-d -p 8065:8065')
                }
            }
        }
    }
}
