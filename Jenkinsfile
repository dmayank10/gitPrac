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
            steps { 
                echo 'code build through maven'
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
