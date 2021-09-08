node {
    stage('Validar Campos') {
      
      if (params.Ambiente == '') {
          echo 'Nenhum ambiente informado'
          currentBuild.result = 'ABORTED'
          error('myParam not set')  
         }
      
        }

  

stage('Clonando repositório do GIT'){    
  if (params.Ambiente == 'dev') {    
    git branch: 'main', 
    credentialsId: '7ada7a7d-26d1-4118-bcce-ee0171b42f62',
    url: 'git@github.com:davi2603/LABPCS.git'}
}

}
    
    
     
 
 
