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
					docker.withRegistry('registry.hub.docker.com/shouryade', 'dckr_pat_3l-82uUDzeMxVmRXv_bOsqBcR-M') { // ps:already revoked haha suckers
						docker.image('shouryade/authpractice').push()
					}
				}
			}
		}
	}
}
