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
                sh 'wget -O whitecat.jpg https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/other/cat_relaxing_on_patio_other/1800x1200_cat_relaxing_on_patio_other.jpg' 
                sh 'echo see downloaded image below'
                sh 'ls'
            }
        }
        stage('upload_image_to_s3_bucket') {
            steps {
                sh 'aws s3 cp whitecat.jpg s3://test-cli-buck/jenkins/'
                sh 'echo i have copied the image'
            }
        }
        stage('list_s3_bucket_item') {
            steps {
                sh 'aws s3 ls s3://test-cli-buck/jenkins/'
                sh 'echo item in s3 bucket'
            }
        }
        stage('clone_git_repo') {
            steps {
                sh 'git clone https://github.com/akeenz/emr-hive-dataset.git'
                sh 'echo see repo below'
                sh 'ls'
            }
        }
        stage('copy_fiel_to_s3') {
            steps {
                sh 'aws s3 cp emr-hive-dataset/dataset/sale.sql s3://test-cli-buck/jenkins/'
                sh 'echo see file below'
                sh 'aws s3 ls s3://test-cli-buck/jenkins/'
            }
        }
    }
}
