pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                script {
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                }
            }
        }
        stage('Push docker images') {
            steps {
                script {
                    sh 'chmod +x build/deploy.sh'
                    sh './build/deploy.sh'
                }
            }
        }
    }
}
