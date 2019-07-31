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
				checkout
				echo "Code Cloning is Done"
			}
		}
	}
}
