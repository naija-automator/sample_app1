node {
        def app
        
        stage('Clone Repository') {
                checkout scm
        }
        
        stage('Build image') {
                app = docker.build('naijaautomator1/sample_app16')
        }

        stage('Push image') {
                docker.withRegistry('https://registry.hub.docker.com', 'dhub-creds') {
                        app.push('phunkytech_v1')

                }                    
        }
}
