#copy artifact to s3
aws s3 cp ${buildername}_artifact.zip s3://test-cli-buck/jenkins/