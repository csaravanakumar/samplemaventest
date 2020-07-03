node{
    stage('Checkout'){
    git 'https://github.com/csaravanakumar/samplemaventest'
    echo "checkedout"
    }
    stage('compile-package'){
    def mavhome=tool name: 'maven-3', type: 'maven'
        bat 'mvn package'
        echo "package completed"
    }
    stage('docker image'){
            docker { image 'node:7-alpine' }
    }
        stage('Test') {
            steps {
                bat 'node --version'
            }
        }
    }
