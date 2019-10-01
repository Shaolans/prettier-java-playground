# prettier-java-playground

> A playground to test Java support on Prettier !

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

## Deploy on GitHub Pages

In order to deploy the playground on GitHub pages, you need to setup a branch as a source.
If you have not set it up yet, you can do as follows:
```bash
git checkout --orphan gh-pages
git reset
git commit --allow-empty -m "Init gh-pages"
git push origin gh-pages
```

If you have not deployed the playground yet, add an empty commit:
```bash
git commit --allow-empty -m "deploy"
```

Go to the repository settings and add the gh-pages branch as the source to build the GitHub Pages.

You can now deploy the playground by running the following command on the master branch:
```bash
./deploy.sh
```

