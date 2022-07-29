pipeline {
    agent any
    stages {
        stage("Build"){
            steps{
                scripts{
                    sh 'docker build 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1 /home/ubuntu/DjangoJenkis/'
                }
            }
        }
        stage("Push"){
            steps{
                scripts{
                    sh 'docker push 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1'
                }
            }
        }
    }
}