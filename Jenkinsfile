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
    sh '/path/to/terraform init'
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
