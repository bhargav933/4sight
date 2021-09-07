pipeline {
    agent any
    options {
        timestamps ()
        disableConCurrentBuilds()
    }
    
    stages {
        stage ('Node-Install') {
            steps {
                bat 'npm i'
            }
        }
        stage ('Node-Build'){
            steps {
                bat 'npm run build'
            }
        }
    }
}
