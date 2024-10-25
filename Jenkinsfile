pipeline {
    agent any
    stages {
        // stage('Clone Repository') {
        //     steps {
        //         git 'https://github.com/pratham00789/2322_ISA2.git'
        //     }
        // }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('2322')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    sh 'docker rm -f 2322 || true'
                }
            }
        }
        stage('Run New Container') {
            steps {
                script {
                    docker.run('-d --name 2322 2322')
                }
            }
        }
    }
}
