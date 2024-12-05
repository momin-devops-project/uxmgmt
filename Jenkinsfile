pipeline {
    agent any
    stages {
        stage('git clone') {
            steps {
                checkout scm
            }
        }
        stage('build and push') {
            steps {
                script {
                   def DockerImage = 'mominsh/jenkinsdocker'
                    def DockerTag = 'v2'
                    def DockerCredentialID = 'dockerhub_credentials'
                    def customImage = docker.build("${DockerImage}:${DockerTag}",".")
                    docker.withRegistry('' , DockerCredentialID ) {
                        dockerBuild.Push()
                    }
                }
            }
        }
    }
}
