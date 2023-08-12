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
                def sonarScannerCmd = "${SCANNER_HOME}/bin/sonar-scanner"
                    withSonarQubeEnv('SonarQube-website') {
                        sh "${sonarScannerCmd}"
                
            }
        }
        stage('deploy') {
            steps { 
                echo 'code deploy into docker container'
            }
        }
    }
}
