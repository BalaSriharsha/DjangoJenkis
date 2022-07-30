pipeline {
    agent any
    stages {
        stage("Get Parameters"){
            steps{
                script{
                    properties([
                        parameters([
                            choice(
                                choices: ['Fast Build', 'Slow Build'],
                                name: "Type of Build"
                            ),
                            booleanParam(
                                defaultValue: true,
                                description: "Do you want to build or not?",
                                name: "Do you want to build or not?"
                            ),
                            string(
                                defaultValue: '',
                                trim: true,
                                name: "Image tag"
                            )
                        ])
                    ])
                }
            }
        }
        stage("Build"){
            steps{
                // scripts{
                //     sh """
                //     cd /home/ubuntu/DjangoJenkis/ &&
                //     pwd
                //     docker build -t 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1 .
                //     """
                // }
                sh """
                    docker login --username balasriharshach --password Srikrishna7
                """
                sh """
                    docker build -t 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:${env.Image Tag} .
                    """
            }
        }
        stage("Push"){
            steps{
                // scripts{
                    // sh """docker push 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1"""
                // }
                sh """docker push 282986750202.dkr.ecr.us-east-1.amazonaws.com/djangotest:v1"""
            }
        }
    }
}