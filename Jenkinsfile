pipeline {
    agent {
        docker {
            alwaysPull true
            image 'public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest'
            args "--privileged --entrypoint='hrp-init.sh'"
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
