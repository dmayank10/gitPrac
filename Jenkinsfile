pipeline {
    agent any
    stages {
        stage('github') {
            steps { 
                echo 'code check-in'
                git credentialsId: 'github-credentials', url: 'https://github.com/dmayank10/gitPrac'
            }
        }
        stage('build') {
            tools {
                maven 'pip-maven' 
            }
            steps { 
                echo 'code build through maven'
                sh 'mvn clean package compile install' 
            }
        }
        stage('test') {
            steps { 
                echo 'code test through sonarqube'
            }
        }
        stage('deploy') {
            steps { 
                echo 'code deploy into docker container'
            }
        }
    }
}
