curl -v -X GET http://jenkins-url:8080/crumbIssuer/api/json --user admin:c272c5215d8847558da6bacd8bfbb21f


pipeline {
    agent any

    stages {
        stage('prebuild') {
            steps {
                sh 'chmod +x scripts/prebuild.sh'
                sh 'scripts/prebuild.sh'
            }
        }
        stage('build') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh 'scripts/build.sh'
            }
        }
        stage('deploy') {
            steps {
                sh 'chmod +x scripts/deploy.sh'
                sh 'scripts/deploy.sh'
            }
        }
      
    }

