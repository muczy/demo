pipeline {
    agent {
        dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                sh "gradle clean build --no-daemon -x check"
            }

            post {
                success {
                    junit 'build/test-results/test/TEST-*.xml'
                    archiveArtifacts 'build/libs/*.jar'
                }
            }
        }
    }

    
}
