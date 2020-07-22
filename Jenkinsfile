node{
    agent {
        label 'EC2StaticJenkinsSlaveFinal'
    }
    stage('Checkout'){
    git 'https://github.com/csaravanakumar/samplemaventest'
    echo "checkedout"
    }
    stage('compile-package'){
    def mavhome=tool name: 'maven-3', type: 'maven'
        sh "${mavhome}/bin/mvn package"
        echo "package completed"
    }
    stage(' Maven Test') {
        def mavhome=tool name: 'maven-3', type: 'maven'
        echo "test completed"
        }
    stage('Push Image') {
         echo "wait for push"
    }
}
