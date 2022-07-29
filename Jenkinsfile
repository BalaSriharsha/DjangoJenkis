pipeline {
    agent any
    stages {
        stage("Build"){
            steps{
                scripts{
                    sh """
                    cd /home/ubuntu/DjangoJenkis/ &&
                    pwd
                    docker build -t 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1 .
                    """
                }
            }
        }
        stage("Push"){
            steps{
                scripts{
                    sh """docker push 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1"""
                }
            }
        }
    }
}