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
                sh 'mvn clean'
                sh 'mvn package'
                sh 'mvn compile'
                sh 'mvn install'
            }
        }
        stage('test') {
            tools {
            pip-sonarqube
            }
            steps { 
                echo 'code test through sonarqube'
                sh 'mvn clean sonar:sonar'
                sh 'mvn package sonar:sonar'
                sh 'mvn compile sonar:sonar'
                sh 'mvn install sonar:sonar'
            }
        }
        stage('deploy') {
            steps { 
                echo 'code deploy into docker container'
            }
        }
    }
}
