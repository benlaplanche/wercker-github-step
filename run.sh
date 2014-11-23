if [ ! -n "$GITHUB_REMOTE" ]; then
	error 'Please specify your github repo address'
	exit 1
fi

commit_message=`get_option commit_message`

if [ ! -n "$commit_message" ]; then
	error 'Please specify a commit message'
	exit 1
fi

git init
git add .
git commit -m $commit_message
git push -f $GITHUB_REMOTE master

success 'Deployed to GitHub Repo successfully'