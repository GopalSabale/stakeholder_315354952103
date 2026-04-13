pipeline {

    agent any

    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('terraform_module_cred')
        AWS_SECRET_ACCESS_KEY = credentials('terraform_module_cred')
    }

    stages {

        stage('Terraform Version') {
            steps {
                bat 'terraform --version'
            }
        }

        stage('Terraform Format') {
            steps {
                bat 'terraform fmt'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('stakeholder_315354952103') {
                    bat 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('stakeholder_315354952103') {
                    bat 'terraform plan -var-file=terraform.tfvars -out=tfplan.txt'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('stakeholder_315354952103') {
                    bat 'terraform apply -auto-approve tfplan.txt'
                }
            }
        }
    }
}