pipeline {
    agent any
    
    stages {
        stage('Compile and Clean') { 
            steps {

                bat "mvn clean compile"
            }
        }
       
		
        
     //   stage('SonarQube'){
	//		steps{
	//			bat label: '', script: '''mvn sonar:sonar \
	//			-Dsonar.host.url=http://localhost:9000 \
	//			-Dsonar.login=squ_75d790bab41cb01cf7594d6e78b0868cfb8d065b'''
	//		}
   	//	}
        
     

        stage('Build Docker image'){
            steps {
              
                bat 'docker image build -t spring-docker-jenkins-app1  .'
           }
        }

        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                    sh "docker login -u arunajava567 -p ${varthr708}"
                }
            }                
        

        stage('Docker Push'){
            steps {
                bat 'docker push arunajava567/spring-docker-jenkins-app1:latest'
            }
        }
        
        stage('Docker deploy'){
          steps {
               
              bat 'docker run -itd -p  8086:8086 arunajava567/spring-docker-jenkins-app1:latest'
            }
        }

        
      
     
    }
}
