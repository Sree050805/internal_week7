pipeline {
    agent any

    environment {
        PATH = "/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:${env.PATH}"
    }

    stages {
        stage('Build Docker image') {
            steps {
                echo "Build Docker Image"
                sh 'docker build -t myapp'
            }
        }

        stage('Run image') {
            steps {
                echo "Run application in Docker Container"
                sh 'docker rm -f mycontainer || true'
                sh 'docker run -d -p 5001:5001 myapp'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
