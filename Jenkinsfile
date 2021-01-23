pipeline {
    agent {
        docker {
            alwaysPull true
            image '778477161868.dkr.ecr.us-west-2.amazonaws.com/java-build-dind:latest'
            registryUrl 'https://778477161868.dkr.ecr.us-west-2.amazonaws.com'
            registryCredentialsId 'ecr:us-west-2:scratch-account-01'
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
