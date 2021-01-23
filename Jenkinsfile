pipeline {
    agent {
        docker { image 'gradle:jdk11' }
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
