pipeline {
    agent {
        docker {
            image 'public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest'
            args '--privileged'
        }
    }
    stages {
        stage('Build') {
            steps {
                // sh 'java --version'
                // sh 'gradle --version'
                // sh './gradlew'
                sh 'docker info'
            }
        }
    }
}
