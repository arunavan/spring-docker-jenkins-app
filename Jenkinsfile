pipeline {
    agent any
    tools { 
      maven 'MAVEN_HOME' 
      jdk 'JDK_HOME' 
    }
    stages {
        stage('Compile and Clean') { 
            steps {

                sh "mvn -f spring-docker-jenkins-app/pom.xml compile"
            }
        }
       
		stage('Junit5 Test') { 
            steps {

                sh "mvn -f spring-docker-jenkins-app/pom.xml test"
            }
        }
        
        stage('SonarQube'){
			steps{
				sh label: '', script: '''mvn sonar:sonar \
				-Dsonar.host.url=http://CDLVDIDEVMAN499:9000 \
				-Dsonar.login=7b83054b6ec615206ca18a7af169c491741a5786'''
			}
   		}
        
        stage('Maven Build') { 
            steps {
                sh "mvn -f spring-docker-jenkins-app/pom.xml clean install"
            }
        }


        //stage('Build Docker image'){
            //steps {
              
                //sh 'docker build -t  9246115521/docker_jenkins_springboot:${BUILD_NUMBER} .'
            //}
        //}

        //stage('Docker Login'){
            
            //steps {
                // withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                 //   sh "docker login -u 9246115521 -p ${Dockerpwd}"
                //}
            //}                
        

       // stage('Docker Push'){
           // steps {
            //    sh 'docker push 9246115521/docker_jenkins_springboot:${BUILD_NUMBER}'
          //  }
       // }
        
       // stage('Docker deploy'){
        //    steps {
               
            //    sh 'docker run -itd -p  8081:8080 9246115521/docker_jenkins_springboot:${BUILD_NUMBER}'
          //  }
       // }

        
       // stage('Archiving') { 
          //  steps {
             //    archiveArtifacts '**/target/*.jar'
          //  }
     //   }
     
    }
}