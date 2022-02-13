$workspace="C:\Users\kingi\Documents\UTD\Senior_Design\CCS"
$projectName="coap_tester"
$projectPath="$workspace\$projectName"
$eclipse="C:\ti\ccs1110\ccs\eclipse\eclipsec.exe"
$ccs="C:\ti\ccs1110\ccs\eclipse\ccstudio.exe"


function buildHelp(){
  & $eclipse `
  -noSplash `
  -data $workspace `
  -application com.ti.ccstudio.apps.buildProject `
  -ccs.help
}
function inspectProject(){
    & $eclipse `
    -noSplash `
    -data "$workspace" `
    -application "com.ti.ccstudio.apps.inspect" `
    "-ccs.projects" $projectName `
    "-ccs.projects:showBuildOptions"
    # "-ccs.preferences"
}
function importProject(){
    & $eclipse `
    -noSplash `
    -data $workspace `
    -application "com.ti.ccstudio.apps.projectImport" `
    "-ccs.location" $projectPath 
}
function buildProject(){
    & $eclipse `
    -noSplash `
    -data $workspace `
    -application "com.ti.ccstudio.apps.buildProject" `
    "-ccs.projects" $projectName `
    "-ccs.buildType" incremental `
    "-ccs.listErrors" `
    "-ccs.listProblems"
}

function cleanProject(){
    & $eclipse `
    -noSplash `
    -data $workspace `
    -application "com.ti.ccstudio.apps.buildProject" `
    "-ccs.projects" $projectName `
    "-ccs.buildType" clean `
    "-ccs.listErrors" `
    "-ccs.listProblems"
}
function debugProject(){
    & $ccs
}


switch ($args[0]) {
  "help" {
    buildHelp
  }
  "build" {
    buildProject
  }
  "clean" {
    cleanProject
  }
  "inspect" {
    inspectProject
  }
  "import" {
    importProject
  }
  "debug" {
    debugProject
  }
  "connect" {
    python -m serial.tools.miniterm $args[1] 115200
  }
  "list-ports" {
    python -m serial.tools.list_ports -v
  }
  Default {
    Write-Output "Invalid Args"
  }
}


