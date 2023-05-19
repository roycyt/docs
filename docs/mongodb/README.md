```
mongodb://root:your-root-password@localhost:27017
```

# MongoDB community Edition

* [Install MongoDB Community Edition on Linux — MongoDB Manual](https://www.mongodb.com/docs/manual/administration/install-on-linux/) (Recommended)
* [Install MongoDB Community with Docker — MongoDB Manual](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-community-with-docker/) (development & test)

# mongo - Official Image | Docker Hub

* https://hub.docker.com/_/mongo/

## Environment Variables

### MONGO_INITDB_ROOT_USERNAME, MONGO_INITDB_ROOT_PASSWORD

These variables, used in conjunction, create a new user and set that user's password. This user is created in the `admin` [authentication database](https://docs.mongodb.com/manual/core/security-users/#user-authentication-database) and given [the role of `root`](https://docs.mongodb.com/manual/reference/built-in-roles/#root), which is [a "superuser" role](https://docs.mongodb.com/manual/core/security-built-in-roles/#superuser-roles).