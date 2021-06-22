pipeline {
    agent any

    stages {
            stage('Checkout') {
                steps {
                    git 'https://github.com/shivaswaroop40/Jenkins_CI-CD.git'
                }
            }
            stage('Build') {
                steps {

                    // Run Maven on a Unix agent.
                    sh "mvn -Dmaven.test.failure.ignore=true clean package"

                    // To run Maven on a Windows agent, use
                    // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
            
        }
            stage('Deploy') {
                steps {
                    deploy adapters: [tomcat9(credentialsId: 'Tomcat', path: '', url: 'http://172.31.31.39:8090')], contextPath: 'Tomcat_war.war', war: 'target/Tomcat_war.war'
                }
            }
    }
}
