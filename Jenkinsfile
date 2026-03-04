pipeline {
    agent any
    
    tools {
        terraform 'terraform-latest'
    }
    
    stages {
        stage('Terraform Initialization') {
            steps {
                sh 'terraform init'
            }
        }
        stage('State Evaluation (Plan)') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('State Imposition (Apply)') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
