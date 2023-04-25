# Clone repository using personal access token

Source: https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#clone-repository-using-personal-access-token

To clone a repository when SSH is disabled, clone it using a personal access token by running the following command:
```
git clone https://<username>:<personal_token>@gitlab.com/gitlab-org/gitlab.git
```
This method saves your personal access token in your bash history. To avoid this, run the following command:
```
git clone https://<username>@gitlab.com/gitlab-org/gitlab.git
```
When asked for your password for https://gitlab.com, enter your personal access token.

The username in the clone command:

* Can be any string value.
* Must not be an empty string.

Remember this if you set up an automation pipeline that depends on authentication.

---

```
$ git clone https://roy:glpat-tmr8iEr1YEsjGaqf-smv@gitlab.com/roy.chen/foo.git
```
