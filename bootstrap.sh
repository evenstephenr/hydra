echo "installing hydra deps..."

npm i

echo "running lerna..."

npx lerna bootstrap

echo "initializing subtree remotes..."

git remote add components git@github.com:evenstephenr/hydra-components.git
git remote add query git@github.com:evenstephenr/hydra-query.git
git remote add storybook git@github.com:evenstephenr/hydra-storybook.git

echo "done!"