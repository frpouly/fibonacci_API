pipeline {
  agent { docker { image 'ruby:2.7.0' } }
  stages {
    stage('requirements') {
      steps {
        sh 'gem install bundler -v 2.1.2'
      }
    }
    stage('build') {
      steps {
        sh 'bundle install'
      }
    }
    stage('test') {
      steps {
        sh 'rake'
      }   
    }
  }
}
