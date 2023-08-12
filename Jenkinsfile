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
            withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'maven-website', mavenSettingsConfig: '', traceability: true) {
    echo 'code build through maven'
                sh 'mvn clean'
                sh 'mvn package'
                sh 'mvn compile'
                sh 'mvn install'
                }
            }
        }    
        stage('test') {
            steps { 
                withSonarQubeEnv('SonarQube-website') {
    echo 'code test through sonarqube'
                    sh "${scannerHome}/bin/sonar-scanner -X"
                     mvn sonar: sonar
}
                
            }
        }
        stage('deploy') {
            steps { 
                echo 'code deploy into docker container'
            }
        }
    }
}
