node {

stage('Clone Repository')
{
checkout scm
}

stage('Show me the files'){
sh "ls -l"
}

stage('Build docker image'){

sh "docker build -t docker_test:latest ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'bmalinga' -p 'Dig!DevopsT3@m' "
sh "docker tag docker_test:latest bmalinga/docker_html_exam:latest"
sh "docker push bmalinga/docker_html_exam:latest"
}

stage('Apply changes to the environment') {
sh "ls -l"
}


}
