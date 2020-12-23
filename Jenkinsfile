pipeline{
    agent any
    stages{
        stage('Build Stage'){
            steps{
                sh 'docker build -t surekhadock2020/dockertestpipeline:${BUILD_NUMBER}
            }
        }
    }
}
