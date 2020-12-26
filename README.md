# Docker -> Github -> Travis -> AWS ElasticBeanStalk (Complete Automated)
Pre-requisites:
1. Docker must be installed on your system(For Windows/MacOs - VM+docker(from official site))


HOW TO USE:
1. sudo su
2. git pull the repo in some folder
3. To run App in container
    # Development Server Differnet ways of running :
    1. docker-compose run (development service will start in container, volume setup will be done).
        2.
            2.1 docker build -t ashuimage -f Dockerfile.dev .
            2.2 docker run ashuimage (for dev server)
            2.3 docker run ashuimage npm run test (for testing server)
    # Production Server
    1. 
        1.1 docker build -t ashuimage1 .
        1.2 docker run ashuimage (production running on nginx)
    
# Establishing connection with Travis 
1. Setup Travis Account
2. Get this repo on travis
3. Push code on github - travis will fetch and start running tests (.travis.yml)
    

# Setup ElasticBeanStalk Environment
==> Remember to : 
1. not select linux2(it will auto start docker-compose rather than Dockerfile), choose linux.
2. make a new user (goto IAM -> select users) -> give previledge to "ElasticBeanStalkAllAccess" -> Copy access_id and secret_id -> paste it to environment of Travis(it will enject it inside our program here (looks for $xxx))
3. Remember to expose port -nginx in Dockerfile ! - Already done : ) 

