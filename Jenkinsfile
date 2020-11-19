pipeline {
    agent {
        //docker {
        //    image 'openjdk:8'
        //}
        dockerfile true
    }

    stages {
        stage('Build') {
            steps {
                sh "gradle clean build --no-daemon > /dev/null 2>&1 || true"
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit 'build/test-results/test/TEST-*.xml'
                    archiveArtifacts 'build/libs/*.jar'
                }
            }
        }
    }

    
}
