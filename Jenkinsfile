pipeline {
    
    agent {
        docker {
            image 'node:16-alpine'
        }
    }

    stages {
        stage("build") {
            steps {
                sh 'node --version'
            }
        }
        stage("deploy") {
            steps {
                sh 'node --version'
            }
        }
    }
}
