# Get Started

## Start the Concourse Server

```bash
$ git clone https://github.com/concourse/concourse-docker
$ cd concourse-docker
$ vim docker-compose.yml
     environment:
-      CONCOURSE_EXTERNAL_URL: http://localhost:8080
+      CONCOURSE_EXTERNAL_URL: http://foo.example.com:8080
       CONCOURSE_POSTGRES_HOST: db
       CONCOURSE_POSTGRES_USER: concourse_user
       CONCOURSE_POSTGRES_PASSWORD: concourse_pass
       CONCOURSE_POSTGRES_DATABASE: concourse
-      CONCOURSE_ADD_LOCAL_USER: test:test
-      CONCOURSE_MAIN_TEAM_LOCAL_USER: test
+      CONCOURSE_ADD_LOCAL_USER: admin:mypass
+      CONCOURSE_MAIN_TEAM_LOCAL_USER: admin
+      CONCOURSE_CLUSTER_NAME: foo
$ ./keys/generate
$ docker-compose up -d
```

## Setup the fly CLI

```bash
$ fly login -t foo -c http://foo.example.com:8080
$ fly targets
$ fly -t foo status
```
