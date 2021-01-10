# GF Oauth2 with SpringBoot
## Prerequisite Software
 Install Java 1.8, Maven, git, docker.
 
## Check out the code 
 Using git: `git clone https://github.com/gfengster/gfoauth2.git`<br>
 Download zip: `https://github.com/gfengster/gfoauth2/archive/main.zip`

## Build and run in local machine
1. Test, build and pack the project
In a terminal, change path to the project.<br>
 `mvn clean test package`
2. Run the application<br>
`java -jar ./target/gfoauth2.jar`

## Build and run docker in local machine
1. Test, build and pack the project
In a terminal, change path to the project.<br>
 `mvn clean test package`
2. Build docker image<br>
`docker build --tag gfoauth2:latest .`
3. Run a container<br>
`docker run -p 19090:19090 gfoauth2` 

## CI/CD with GitHub
The project source code is hosted in GitHub. CI/CD has been configured in workflows.
Changing code could trigger CI workflow, which test, build the project. If succeeded, docker image will be created and deployed to [DockerHub](https://hub.docker.com).<br>
CI/CD could be triggered manually.
1. The auto built docker image location<br>
[https://hub.docker.com/repository/docker/gfengster/cake-manager](https://hub.docker.com/repository/docker/gfengster/gfoauth2)
2. Pull docker image built in GitHub from DockerHub<br>
`docker pull registry.hub.docker.com/gfengster/gfoauth2:latest`
3. Create a container and run the application<br>
`docker run -p 18080:18080 gfengster/gfoauth2`

## Using the application
Note: Before run the application make sure port 19090 are free.
1. Show my GitHub and Google login page<br>
[http://localhost:19090](http://localhost:19090)
