pipeline {
    agent any
    // agent {
    //     docker {
    //         alwaysPull true
    //         image 'public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest'
    //         args "--privileged --entrypoint='/hrp/init.sh'"
    //     }
    // }
    stages {
        stage('Build') {
            docker.image('public.ecr.aws/k1n6i4c2/java-build-dind-pub:latest').withRun("--volume=/var/run/docker.sock:/var/run/docker.sock") {
                    // The build here
                    sh 'docker info'
            }
            //steps {
                // sh 'java --version'
                // sh 'gradle --version'
                // sh './gradlew'
                // sh 'docker info'

        //}
        }
    }
}
