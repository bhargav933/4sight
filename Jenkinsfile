pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                bat 'docker build -t 4sight .'
            }
        }
        stage('Deploy Image') {
            steps {
                bat 'docker run -p 100:80 -itd 4sight //bin/bash'
            }
        }
    }
}

