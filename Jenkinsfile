pipeline {
	agent any
	stages {
		stage('Build Docker Image') {
			steps {
				script {
					docker.build('am0312/authpractice')
				}
			}
		}
		stage('Push Docker Image') {
			steps {
				script {
					docker.withRegistry('https://registry.hub.docker.com/', 'am0312') { // ps:already revoked haha suckers
						docker.image('am0312/authpractice').push()
					}
				}
			}
		}
	}
}
