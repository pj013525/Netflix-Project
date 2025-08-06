pipeline {
    agent any

    tools {
        maven 'maven-3'
        jdk 'jdk-17'
    }

    environment {
        SCANNER_HOME = tool 'sonar-scanner'
        DOCKER_USER = 'pj013525'
        DOCKER_IMAGE = 'netflix-image'
        APP_VERSION = 'latest'
    }

    stages {

        stage('Clean Workspace') {
            steps {
               cleanWs()
            }
        }

        stage('Git Checkout') {
            steps {
                git 'https://github.com/pj013525/Netflix-Project.git'
            }
        }

        stage('Compile the Code') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('Testing the Code') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Code Quality Analysis - SonarQube') {
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh '''$SCANNER_HOME/bin/sonar-scanner \
                        -Dsonar.projectName=Netflix \
                        -Dsonar.projectKey=Netflix \
                        -Dsonar.sources=. \
                        -Dsonar.java.binaries=target/classes'''
                }
            }
        }

        stage('Build the WAR Artifact') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Upload WAR to Nexus') {
            steps {
                nexusArtifactUploader(
                    artifacts: [[
                        artifactId: 'myapp',
                        classifier: '',
                        file: 'target/myapp.war',
                        type: 'war'
                    ]],
                    credentialsId: 'nexus-creds',
                    groupId: 'in.pj',
                    nexusUrl: '44.204.149.160:8081',
                    nexusVersion: 'nexus3',
                    protocol: 'http',
                    repository: 'Netflix-App',
                    version: '8.3.3-SNAPSHOT'
                )
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$APP_VERSION .'
            }
        }

        stage('Docker Tag & Push') {
            steps {
                withDockerRegistry(credentialsId: 'docker-creds', url: 'https://index.docker.io/v1/') {
                    sh '''
                        docker tag $DOCKER_IMAGE:$APP_VERSION $DOCKER_USER/$DOCKER_IMAGE:$APP_VERSION
                        docker push $DOCKER_USER/$DOCKER_IMAGE:$APP_VERSION
                    '''
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker rm -f Netflix-App || true
                    docker run -d --name Netflix-App -p 8000:8080 $DOCKER_USER/$DOCKER_IMAGE:$APP_VERSION
                '''
            }
        }
    }
}
