pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                sh 'echo Hello ${name}, we are ready to start your pipeline'
            }
        }
        stage('list_s3_bucket') {
            steps {
                sh 'aws s3 ls'
            }
        }
    }
}
