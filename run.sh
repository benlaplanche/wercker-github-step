if [ ! -n "$GITHUB_REMOTE" ]; then
	error 'Please specify your github repo address'
	exit 1
fi

if [ ! -n "$GITHUB_MESSAGE" ]; then
	error 'Please specify a commit message'
	exit 1
fi

git init
git add .
git commit -m $GITHUB_MESSAGE
git push -f $GITHUB_REMOTE master

success 'Deployed to GitHub Repo successfully'