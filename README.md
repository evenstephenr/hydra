# Hydra

A playground for lerna and sandbox for learning how to responsibly use a [majestic monolith](https://m.signalvnoise.com/the-majestic-monolith/)

## Useful scripts (windows)

The scripts here should be broken down by package, and for now are all written for developing on the Windows platform

#### /packages/components

Build components in `~/src` to `~/dist`

```
$ lerna exec --scope components -- npm i
```

Installs deps from `~/dist` to `~/app`

```
$ lerna exec --scope components -- powershell.exe -Command "echo \"using ~/app\" && cd \"./app\" && echo \"installing deps ...\" && npm i"
```

Runs sandbox app in `~/app`

```
$ lerna exec --scope components -- powershell.exe -Command "echo \"using ~/app\" && cd \"./app\" && echo \"running sandbox ...\" && npm run start"
```