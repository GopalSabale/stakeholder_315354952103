pipeline {

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    agent any

    environment {
    AWS_ACCESS_KEY_ID     = credentials('terraform_module')
    AWS_SECRET_ACCESS_KEY = credentials('terraform_module')
    }
    stages {
        stage('Terraform Version') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform --version'
            }
        }
        stage('Terraform format') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform fmt'
            }
        }		
        stage('Terraform init') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                echo 'Terraform Initialization is In Progress!'
                sh 'terraform plan -var-file=terraform.tfvars -out=tfplan.txt'

            }
        }       
        stage('Terraform Apply') {
            steps {
                echo 'Terraform Apply'
                sh 'terraform apply --auto-approve'
            }
        }
	}

}