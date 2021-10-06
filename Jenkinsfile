node {
    
  
        
     stage('teste') {   
       print "DEBUG: parameter Ambiente = ${env.URL_PCS}"
     }
        
    
    
    
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

    
  if (params.Ambiente == 'qa') {    
    git branch: 'qa', 
    credentialsId: '7ada7a7d-26d1-4118-bcce-ee0171b42f62',
    url: 'git@github.com:davi2603/LABPCS.git'}
    

  if (params.Ambiente == 'prod') {    
    git branch: 'prod', 
    credentialsId: '7ada7a7d-26d1-4118-bcce-ee0171b42f62',
    url: 'git@github.com:davi2603/LABPCS.git'}


}
    
stage("Iniciando Deploy"){
     if (params.Ambiente == 'qa') {
            stage("Deploy Ansible - Homologação") {    
                withCredentials([usernamePassword(credentialsId: 'ansible_user', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                      sh " ansible-galaxy collection install community.windows"
                      sh "ansible-playbook   ansible/inventory/pcs_automacao.yml  -i  ansible/group_vars/all.yml -e ansible_user=$USERNAME -e ansible_password=$PASSWORD" }
                      }
        }      
    
    if (params.Ambiente == 'prod') {
            stage("Deploy Ansible - Produção") {    
               withCredentials([usernamePassword(credentialsId: 'ansible_user', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                     sh " ansible-galaxy collection install community.windows"
                     sh "ansible-playbook   ansible/inventory/pcs_automacao.yml  -i  ansible/group_vars/all.yml -e ansible_user=$USERNAME -e ansible_password=$PASSWORD" }
                     }
        
     }
    
    
}
}

     
 
 
