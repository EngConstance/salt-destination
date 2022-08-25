#!/bin/bash
#Author=EngConstance
#shell script testing to contribute to a project on github
read -p "please enter your repoURL: " repoURL
read -p "please enter the repoName: " repoName
read -p "please enter your work directory: " directory
sudo mkdir $directory
sudo chmod 777 $(pwd)/$directory
cd  $(pwd)/$directory
git clone $repoURL
cd $repoName
branch=$(git branch)

if [[ "$branch" == "* main" ]]; then
	echo "you are on the main branch"
	git checkout -b $USER/changes-added
	echo "i love what i do because it makes me happy" > train.log
	git status
	git add .
	git commit -m "$USER made some changes"
	git checkout main
	git push origin $USER/changes-added
	echo "please go to $repoURL and create a pull request"
else
	echo "change your branch"
fi

