pipeline {
    agent any
    stages {
        stage("Build"){
            steps{
                sh 'docker build 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1 .'
            }
        }
        stage("Push"){
            steps{
                sh 'docker push 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1'
            }
        }
    }
}