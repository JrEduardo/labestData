#!/bin/sh

git config --global user.email "pet.estatistica.ufpr@gmail.com"
git config --global user.name "PET Estatística Boot"

git clone -b gh-pages https://${GIT_KEY}@github.com/${TRAVIS_REPO_SLUG}.git site-output
cd site-output
rm -r ./*
cp -r ../docs/* ./
git add --all *
git commit -m "Automatic Update (build number ${TRAVIS_BUILD_NUMBER})" || true
git push origin master
