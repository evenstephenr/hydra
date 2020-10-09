# Hydra

A lerna sandbox, inspired by this essay on a [majestic monolith](https://m.signalvnoise.com/the-majestic-monolith/)

## Useful scripts (windows)

The scripts here should be broken down by package, and for now are all written for developing on the Windows platform

Add a remote to a new package

```sh
git remote add {PACKAGE_NAME} git@github.com:{GIT_USERNAME}/{REPOSITORY_NAME}.git
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
