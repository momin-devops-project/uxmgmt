pipeline{
    agent any

    stage('git clone') {
        steps {
            checkout scm
        }
        stage('build and push') {
            steps {
                script{
                    def Dockerfile = 'mominsh/jenkinsdocker'
                    def DockerTag = 'v2'
                    def DockerCredentialID = 'dockerhub_credentials'
                    def customImage = docker.build("${dockerfile}:${DockerTag}","."
                    docker.withRegistry('' , DockerCredentialID ) {
                        dockerBuild.Push()
                    } 
                }
            } 
        }
    }
}
