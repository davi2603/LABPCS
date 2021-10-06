

$ARQ=Get-ChildItem -Path C:\JDPCS\Atualizacoes  -Recurse -ErrorAction SilentlyContinue -Filter *.dll |
  Where-Object { $_.Extension -eq '.dll' }
  echo $ARQ.name
foreach( $ARQUIVOS in $ARQ ) {
  if ( $ARQUIVOS.name 	-like '*cabineweb*')
  {
  Copy-Item -Path $ARQUIVOS.FullName  -Destination "C:\JDPCS\Modulo_WEBSite\DLL\" -Recurse -Force  
}

 if ( $ARQUIVOS.name 	-like '*transmissor*')
  {
  Copy-Item -Path $ARQUIVOS.FullName  -Destination "C:\JDPCS\Servicos" -Recurse -Force  
}

 if ( $ARQUIVOS.name 	-like '*receptor*')
  {
  Copy-Item -Path $ARQUIVOS.FullName  -Destination "C:\JDPCS\Servicos" -Recurse -Force  
}

 if ( $ARQUIVOS.name 	-like '*portabilidade*')
  {
  Copy-Item -Path $ARQUIVOS.FullName  -Destination "C:\JDPCS\WS\DLL" -Recurse -Force  
}



}

$DIR=Get-ChildItem -Path C:\JDPCS\Atualizacoes  -Recurse -ErrorAction   SilentlyContinue -Directory -Filter "DLL" 
if ($DIR) {
   $DIRPATH=$DIR.FullName
   echo $DIRPATH
   Copy-Item -Path $DIRPATH\*  -Destination "C:\JDPCS\Modulo_WEBSite\DLL\" -Recurse -Force 
  }


  $DIRHOME=Get-ChildItem -Path C:\JDPCS\Atualizacoes  -Recurse -ErrorAction   SilentlyContinue -Directory -Filter "home" 
if ($DIRHOME) {
   $DIRHOMEPATH=$DIRHOME.FullName
   echo $DIRHOMEPATH
   Copy-Item -Path $DIRHOMEPATH\*  -Destination "C:\JDPCS\Modulo_WEBSite\Home\" -Recurse -Force 
  }
