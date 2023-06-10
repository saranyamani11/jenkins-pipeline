pipeline {
  agent any
    tools {
    terraform 'terraform-pipeline'
}
  stages {
    stage('Checkout') {
      steps {
        // Checkout your Terraform code from version control
        // For example, using Git
        git branch: 'main',
                credentialsId: '7f75e953-1ef6-44bb-a701-b9eb123b4c7c',
                url: 'https://github.com/saranyamani11/jenkins-pipeline.git'
      }
    }

    stage('Terraform Init') {
      steps {
        // Install and configure Terraform
//         sh 'curl -LO https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip'
//         sh 'unzip terraform_1.0.0_linux_amd64.zip'
//         sh 'export PATH=$PATH:${WORKSPACE}'

        // Initialize the Terraform project
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        // Generate Terraform plan
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        // Apply Terraform plan
        sh 'terraform apply -auto-approve tfplan'
      }
    }
  }
}
