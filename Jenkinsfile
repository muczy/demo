pipeline {
    agent {
        //docker {
        //    image 'openjdk:8'
        //}
        dockerfile true
    }

    /*stages {
        stage('Build') {
            steps {
                cleanWs disableDeferredWipeout: true
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/muczy/demo.git']]])
                // Get some code from a GitHub repository
                //git 'https://github.com/muczy/demo.git'

                // Run Maven on a Unix agent.
                sh "gradle --no-daemon clean build"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
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
    }*/

    
}
