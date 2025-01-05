pipeline {
    agent any
    stages {
        stage('Build and Test') {
            parallel {
                stage('Build and Test HelloWorld') {
                    when {
                        changeset "**/HelloWorld/**"
                    }
                    stages {
                        stage('Build') {
                            steps {
                                dir('HelloWorld') {
                                    sh 'mvn clean install'
                                }
                            }
                        }
                        stage('Test') {
                            steps {
                                dir('HelloWorld') {
                                    sh 'mvn test'
                                }
                            }
                        }
                        stage('Deploy') {
                            steps {
                                echo 'Deploying HelloWorld application'
                            }
                        }
                    }
                }
                stage('Build and Test HelloJenkins') {
                    when {
                        changeset "**/HelloJenkins/**"
                    }
                    stages {
                        stage('Build') {
                            steps {
                                dir('HelloJenkins') {
                                    sh 'mvn clean install'
                                }
                            }
                        }
                        stage('Test') {
                            steps {
                                dir('HelloJenkins') {
                                    sh 'mvn test'
                                }
                            }
                        }
                        stage('Deploy') {
                            steps {
                                echo 'Deploying HelloJenkins application'
                            }
                        }
                    }
                }
                stage('Build and Test HelloDevOps') {
                    when {
                        changeset "**/HelloDevOps/**"
                    }
                    stages {
                        stage('Build') {
                            steps {
                                dir('HelloDevOps') {
                                    sh 'mvn clean install'
                                }
                            }
                        }
                        stage('Test') {
                            steps {
                                dir('HelloDevOps') {
                                    sh 'mvn test'
                                }
                            }
                        }
                        stage('Deploy') {
                            steps {
                                echo 'Deploying HelloDevOps application'
                            }
                        }
                    }
                }
            }
        }
    }
}
