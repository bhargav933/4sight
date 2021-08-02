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
                bat 'docker run -p 3000:3000 -p 3001:3001 -itd 4sight //bin/bash'
            }
        }
//         stage('Deploy') {
//             steps {
//                 bat 'xcopy //%WORKSPACE%/build//* C:/inetpub/wwwroot'
            }
        }
    }
}

