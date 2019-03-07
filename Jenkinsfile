node {

stage('Clone Repository')
{
checkout scm
}

stage('Show me the files'){
sh "ls -l"
}

stage('Build docker image'){

sh "docker build -t docker_html_exam:latest ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'bmalinga' -p 'Dig!DevopsT3@m' "
sh "docker tag docker_html_exam:latest bmalinga/docker_html_exam:latest"
sh "docker push bmalinga/docker_html_exam:latest"
}

stage('Apply changes to the environment') {
sh "ls -l"
}
stage('Deploy(Docker run the image)')
{
sh "Docker run -d -p 7088:80/tcp docker_html_exam:latest"
}
}
