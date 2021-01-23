pipeline {
    sh 'aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 778477161868.dkr.ecr.us-west-2.amazonaws.com'
    agent {
        docker {
            image '778477161868.dkr.ecr.us-west-2.amazonaws.com/java-build-dind:latest'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'java --version'
                sh 'gradle --version'
                sh './gradlew'
            }
        }
    }
}
