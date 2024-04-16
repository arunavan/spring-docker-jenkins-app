pipeline {
    agent any
    
    stages {
        stage('Compile and Clean') { 
            steps {

                bat "mvn clean compile"
            }
        }
       
		
        
        stage('SonarQube'){
			steps{
				bat label: '', script: '''mvn sonar:sonar \
				-Dsonar.host.url=http://localhost:9000 \
				-Dsonar.login=squ_75d790bab41cb01cf7594d6e78b0868cfb8d065b'''
			}
   		}
        
     

        stage('Build Docker image'){
            steps {
              
                bat 'docker image build -t spring-docker-jenkins-app2  .'
            }
        }

        //stage('Docker Login'){
            
            //steps {
                // withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                 //   sh "docker login -u 9246115521 -p ${Dockerpwd}"
                //}
            //}                
        

        stage('Docker Push'){
            steps {
                bat 'docker push aruna708/spring-docker-jenkins-app2'
            }
        }
        
        stage('Docker deploy'){
          steps {
               
              bat 'docker run -itd -p  8086:8086 aruna708/spring-docker-jenkins-app2'
            }
        }

        
      
     
    }
}
