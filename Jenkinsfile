pipeline {
	agent any
	stages {
		stage('Build Docker Image') {
			steps {
				script {
					docker.build('shouryade/authpractice')
				}
			}
		}
		stage('Push Docker Image') {
			steps {
				script {
					docker.withRegistry('registry.hub.docker.com/shouryade', 'dckr_pat_3l-82uUDzeMxVmRXv_bOsqBcR-M') {
						docker.image('shouryade/authpractice').push()
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
