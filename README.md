Hello,

- This is a CI/CD project to practice some of the DevOps technologies.
- Our pipeline contains of CI (Continous Integration) and CD (Continous Deployment)

- The stages are:
    - Cloning the code after the changes.
    - Testing the code.
    - Building the Jar file.
    - Containerizing/packaging the application.
    - Push it to docker registry and versioned.
    - Deploy on the production server.

- The main used technologies are:
    - Jenkins: Automation server to execute the CI/CD.
    - Github: As source version control to store the code.
    - Maven: To build the Java application, test the code and generate the report.
    - Docker: Used for two main things:
        - In the Building stage, Maven is to run on a temp container that will be removed after building the jar.
        - Containerizing the application to be stored on the docker hub registry.

Regards
