pipeline{
    agent any
    stages{
        stage('Build Docker Image'){
            steps{
                sh 'docker build -t surekhadock2020/dockertestpipeline:${BUILD_NUMBER} . '
            }
        }
    }
}
