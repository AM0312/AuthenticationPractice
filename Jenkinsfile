pipeline {
	agent any
	stages {
		stage('Build Docker Image') {
			steps {
				script {
					docker.build('authpractice')
				}
			}
		}
		stage('Push Docker Image') {
			steps {
				script {d
					docker.withRegistry('https://registry.hub.docker.com/', 'am0312') { // ps:already revoked haha suckers
						docker.image('authpractice').push()
					}
				}
			}
		}
	}
}
