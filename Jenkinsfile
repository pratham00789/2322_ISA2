pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your_username/<RollNo_ISA2>.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('<roll_no>')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    sh 'docker rm -f <roll_no> || true'
                }
            }
        }
        stage('Run New Container') {
            steps {
                script {
                    docker run -d --name <roll_no> <roll_no>
                }
            }
        }
    }
}
