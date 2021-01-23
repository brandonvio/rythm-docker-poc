pipeline {
    agent {
        docker {
            image 'docker:dind'
            args '--privileged'
        }
    }
    stages {
        stage('Build') {
            steps {
                // sh 'java --version'
                // sh 'gradle --version'
                // sh './gradlew'
                sh 'docker --version'
                sh 'docker info'
            }
        }
    }
}
