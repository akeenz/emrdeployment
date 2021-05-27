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
        // stage('deploy') {
        //     steps {
        //         sh 'chmod +x scripts/deploy.sh'
        //         sh 'scripts/deploy.sh'
        //     }
        // }
      
    }

}