pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker run --name test myapp python test_app.py'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 5000:5000 --name myapp myapp'
            }
        }
    }
}
