def getDockertag(){
    
    def tag = sh script: 'git rev-parse HEAD', returnstdout: true
    return tag
}

pipeline{
    agent any{
        environment{
            Docker_tag = getDockertag();
        }
    stages{
        stage('build'){
            steps{
                docker build . -t surekhadock2020\dockertest:Docker_tag
                docker login -u surekhadock2020 -p 
                withCredentials([string(credentialsId: 'docker_password', variable: 'docker_password')]) {
				    sh 'docker login -u surekhadock2020 -p $docker_password'
				    sh 'docker push deekshsurekhadock2020/dockerpipelinejob:$Docker_tag'
			        }
                }
            }
        }
    }
}
