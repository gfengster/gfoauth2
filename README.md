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
[https://hub.docker.com/repository/docker/gfengster/gfoauth2](https://hub.docker.com/repository/docker/gfengster/gfoauth2)
2. Pull docker image built in GitHub from DockerHub<br>
`docker pull gfengster/gfoauth2:latest`
3. Create a container and run the application<br>
`docker run -p 19090:19090 gfengster/gfoauth2`

## Using the application
Note: Before run the application make sure port 19090 are free.
1. Show my GitHub and Google login page<br>
[http://localhost:19090](http://localhost:19090)<br>
![my login page](https://raw.githubusercontent.com/gfengster/gfoauth2/main/images/login.png)
<br>
2. Click GitHub login link. The GitHub login page will show.<br>
![github log in](https://raw.githubusercontent.com/gfengster/gfoauth2/main/images/gitgub.png)
<br>
3. After logged in, the page will turn to 
![github logged in](https://raw.githubusercontent.com/gfengster/gfoauth2/main/images/githubloggedin.png)
<br>
4. Clicking the Logout button will log out. The page in step 1 show.
<br>
5. Clicking Google login link and log in, the Google logged in page will be<br>
![google logged in](https://raw.githubusercontent.com/gfengster/gfoauth2/main/images/googleloggedin.png)


