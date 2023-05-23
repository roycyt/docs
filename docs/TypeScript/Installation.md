# Locally in the project
```
$ npm install --save-dev typescript
.
├── node_modules
│    └── typescript
│           ├── bin
│                  ├── tsc
│                  └── tsserver
├── package-lock.json
└── package.json
$ cat package.json
{
  "devDependencies": {
    "typescript": "^5.0.2"
  }
}
$ ./node_modules/typescript/bin/tsc --version
Version 5.0.2
```
# Globally
```
$ npm install -g typescript
$ which tsc
/home/user1/.nvm/versions/node/v18.15.0/bin/tsc
```
