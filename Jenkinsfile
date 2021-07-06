pipeline {
    agent any

    stages {
        stage('Npm install') {
            steps {
                sh 'sudo npm i'
            }
        }
        stage('Build') {
            steps {
                sh 'sudo npm run build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp -r /var/lib/jenkins/workspace/4sight/build/* /var/www/html/'
            }
        }
    }
}
