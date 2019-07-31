#!/groovy

def DockerImage
def tagname = 'anandtest/qube'
def dockerhub = 'hub.docker.com'

pipeline
{
	agent any
	stages
	{
		stage('Clean the workSpace')
		{
			steps
			{
			    echo 'Deleting the workSpace'
				deleteDir()
				echo 'Cleanup is Done'
			}
		}
		
		stage('Checkout the latest code')
		{
			steps
			{
				checkout scm
				echo "Code Cloning is Done"
				script
				{
					build_number = "$BUILD_NUMBER"
				}
			}
		}
		
		stage('Build an Docker Image from Dockerfile')
		{
			steps
			{
				script
				{
					DockerImage = docker.build "${tagname}:${build_number}"
					sh 'docker images'
				}
			}
		}
		
		stage('Push Image to DockerHub')
		{
			steps
			{
				script
				{
					sh 'docker login --username="anandgit71" --password="anandgit12" ${dockerhub}'
					DockerImage.push()
				}
			}
		}
	}
}
