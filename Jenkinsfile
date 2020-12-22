def getDockertag(){
    
    def tag = sh script: 'git rev-parse HEAD', returnstdout: true
    return tag
}
pipeline{
    agent any
        environment{
            Docker_tag = getDockertag();
        }
    stages{
	    stage('Build Docker Image'){
	        sh 'docker build -t surekhadock2020/dockertest:Docker_tag .'
	    }
	    stage('Push Docker Image'){
	        steps{
		       sh script: 'docker login -u surekhadock2020 -p ${docker-password}'
                   withCredentials([string(credentialsId: 'docker_password', variable: 'docker_password')]) {
		              sh 'docker login -u surekhadock2020 -p $docker_password'
		              sh 'docker push surekhadock2020/dockerpipelinejob:$Docker_tag'
                    }
                }
        }
    }
}
