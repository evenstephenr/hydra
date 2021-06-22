# Hydra

A [lerna](https://github.com/lerna/lerna) sandbox, inspired by this essay on a [majestic monolith](https://m.signalvnoise.com/the-majestic-monolith/)

## Initial setup

1. Clone this repository

```
$ git clone git@github.com:evenstephenr/hydra.git
```

2. Run the bootstrap scripts

```
$ npm run bootstrap
```


## Useful scripts (windows)

The scripts here should be broken down by package, and for now are all written for developing on the Windows platform

Add a remote to a new package

```sh
$ git remote add {PACKAGE_NAME} git@github.com:{GIT_USERNAME}/{REPOSITORY_NAME}.git
$ git subtree add —-prefix={PACKAGE_DIR} {PACKAGE_NAME} core
```

Push commits to a package

```sh
$ git subtree push --prefix=packages/{PACKAGE_NAME} {PACKAGE_NAME} {BRANCH}
```

#### /packages/components

Push new commits

```sh
$ git subtree push --prefix=packages/components components core
```

Build components in `~/src` to `~/dist`

```sh
$ lerna exec --scope components -- npm run build
```

Installs deps from `~/dist` to `~/app`

```sh
$ lerna exec --scope components -- powershell.exe -Command "echo \"using ~/app\" && cd \"./app\" && echo \"installing deps ...\" && npm i"
```

Runs sandbox app in `~/app`

```sh
$ lerna exec --scope components -- powershell.exe -Command "echo \"using ~/app\" && cd \"./app\" && echo \"running sandbox ...\" && npm run start"
```
