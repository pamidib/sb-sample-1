pipeline {
	  agent any

	  stages {
	    stage("Maven Build") {
	      steps {
	          sh "mvn clean package"
	        
	      }
	    }
	    stage("Docker image Build") {
	      steps {
	          sh "echo 'Build in progress'"
	        
	      }
	  }
	  }
}
