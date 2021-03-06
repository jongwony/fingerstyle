#!/usr/bin/env sh

# abort on errors
set -e

git push origin master

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'fingerstyle.jongwony.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/jongwony/fingerstyle.git master:gh-pages

cd -
