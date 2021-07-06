pipeline {
    agent any

    stages {
        stage('Npm install') {
            steps {
                sh 'npm i'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'copy -r /var/lib/jenkins/workspace/Testing/build/* /var/www/html/'
            }
        }
    }
}
