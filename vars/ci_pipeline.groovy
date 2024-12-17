def call(){
  node(){
  if( env.TAG_NAME){
  stage('Docker Build'){
    print 'Docker Build'
  }
  stage('Docker Push'){
    print 'Docker Push'
  }
  stage('Deploy to Dev'){
    print 'Deploy to Dev'
   }
  }
  else {
  stage('compile Code'){
    print 'compile'
  }
  if(env.BRANCH_NAME != 'main') {
    stage('Test Cases'){
    print 'Test Cases'
   }
  }
  
 }
}
}
