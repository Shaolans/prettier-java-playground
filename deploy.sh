yarn;
yarn build;
git checkout gh-pages;
git reset --hard HEAD^;
mv dist/* .;
git add index.html static;
git commit -m "deploy";
git push origin gh-pages -f;