pipeline {
  agent { label "linux-node" }
  stages {
     stage ('build') {
	  steps {
		script {
		  image = docker.build("my-web-app")
	  	}
	  }
	}
     stage ('deploy') {
         steps {
		sh 'docker run -p 3000:3000 -d my-web-app'
	 }
       }
  }
}
