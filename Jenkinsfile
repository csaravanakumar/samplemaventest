node{
    stage('Checkout'){
    git 'https://github.com/csaravanakumar/samplemaventest'
    echo "checkedout"
    }
    stage('compile-package'){
    def mavhome=tool name: 'maven-3', type: 'maven'
        bat 'mvn package'
        stash includes: 'target/*.jar', name: 'targetfiles'
        echo "package completed"
    }
    stage('Deploy') {
        agent {
            node {
                label 'DockerDefault'
            }
         }
    stage('Docker Build') {
      agent any
      steps {
        bat 'docker build -t saravanakumarc/sample_test_1:latest .'
      }
    }
    
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'Kodaisaro1505', usernameVariable: 'saravanakumarc')]) {
          bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          bat 'docker push saravanakumarc/sample_test_1:latest'
        }
      }
    }
}
