pipeline {
    agent {
        docker { image 'java-build-dind:latest' }
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
