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
    credentialsId: 'github_key',
    url: 'git@github.com:davi2603/LABPCS.git'}
}

}
    
    
     
 
 
