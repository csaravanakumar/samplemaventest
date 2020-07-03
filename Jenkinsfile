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
    stage(' Maven Test') {
        
          echo "code checked in"
    }
    stage('Push Image') {
         echo "code checked in"
    }
}
