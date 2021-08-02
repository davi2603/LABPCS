


try {
    stage('Validar Campos') {
      
      if (params.Ambiente == '') {
          echo 'Nenhum ambiente informado'
          currentBuild.result = 'ABORTED'
          error('myParam not set')  
         }
      
        }
}

      stage("Carregando dependencias."){
           sh ' pip install pywinrm --user'
      }
  
  

stage('Clonando repositório do GIT'){    
  if (params.Ambiente == 'dev') {    
    git branch: 'main', 
    credentialsId: 'root',
    url: 'git@github.com:davi2603/LABPCS.git'}
     
 
 
