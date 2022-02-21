pipeline {
    
    agent {
        docker {
            image 'node:16-alpine'
        }
    }

    stages {
        stage("build") {
            steps {
                sh """
                    docker build -t 192.168.1.6:5000/myapplication:v1 .
                """
            }
        }
        stage("deploy") {
            steps {
                sh """
                    docker run --rm -d -p 8000:8000 192.168.1.6:5000/myapplication:v1
                """
            }
        }
    }
}
