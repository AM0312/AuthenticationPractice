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
				script {
					docker.withRegistry('<registry-url>', '<credentials-id>') {
						docker.image('authpractice').push()
					}
				}
			}
		}
		stage('Deploy') {
			steps {
				// Add deployment steps here (e.g., Kubernetes deployment)
			}
		}
	}
}
