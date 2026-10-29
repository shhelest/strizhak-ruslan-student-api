pipeline {
    agent any

    environment {
        IMAGE_NAME = 'strizhak-ruslan-student-api:v1.0-37187'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew clean assemble --no-daemon'
            }
        }

        stage('Test') {
            steps {
                sh './gradlew test --no-daemon'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t "$IMAGE_NAME" .'
            }
        }

        stage('Verify') {
            steps {
                sh 'test -f build/libs/strizhak-ruslan-student-api-0.0.1-SNAPSHOT.jar'
                sh 'echo "SUCCESS: Ruslan Strizhak, Student ID 37187, Group IT2-2314"'
            }
        }
    }

    post {
        success {
            echo 'SUCCESS: Student API pipeline passed.'
        }
        failure {
            echo 'FAILURE: Check the stage logs.'
        }
    }
}
