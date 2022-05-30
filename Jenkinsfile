pipeline {
	  agent any

	  stages {
	    stage("Maven Build") {
	      steps {
	          sh "mvn clean package"
	        
	      }
	    }
	  stage("Build testing") {
	      steps {
	          sh "mvn test"
	      }
	    }
	   stage("Docker image Build") {
	      steps {
	          sh "docker build --no-cache -t myimage:1.0 ."
	        
	      }
	    }
	     stage("Docker container running") {
	      steps {
	          sh "docker rm -f build_jar"
	          sh "docker run -dit --name=build_jar myimage:1.0 /bin/bash"
	      }
	    }
	  }
}
