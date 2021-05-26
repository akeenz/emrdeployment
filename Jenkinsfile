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
        stage('download_image') {
            steps {
                sh 'wget https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_relaxing_on_patio_other/1800x1200_cat_relaxing_on_patio_other.jpg'
                sh 'echo see downloaded image below'
                sh 'ls'
            }
        }
    }
}
