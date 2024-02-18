pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }

    environment{
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Git checkout') {
            steps {
                echo 'Cloning project files into the jenkins server'
                git branch: 'main', url: 'https://github.com/Michaelgwei86/project-labs-us-session.git'
                sh 'ls'
                sh 'pwd'
            }
        }
        
        stage ('verifying AWS configuration'){
            steps{
                sh 'aws s3 ls'
            }
        }
        
        
        stage ('Verifying Terraform installation'){
            steps{
                echo 'Verifying if terraform is install'
                sh 'terraform --version'
            }
        }
        
        stage ('Terraform init'){
            steps {
                echo 'initializing terraform'
                sh 'terraform init'
            }
        }
        
        stage ('Terraform plan'){
            steps {
                echo 'checking terraform resources to be created'
                sh 'terraform plan'
            }
        }
        
        stage ('Terraform apply'){
            steps {
                echo 'creating resources'
                sh 'terraform apply --auto-approve'
            }
        }
        
        stage ('Manual approval to delete'){
            steps {
               input 'Approval required to delete resources'
            }
        }      
        
        stage ('Terraform Destroy'){
            steps {
               echo 'Automatically tear down infra'
               sh 'terraform destroy'
            }
        }      
        
        
        
    }
}
