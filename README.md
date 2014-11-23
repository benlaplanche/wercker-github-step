# Wercker GitHub Deploy Step

A step to allow you to deploy to a GitHub repo

In your `wercker.yml` file set it as follows
```
- github-deploy:
	name: deploy to github repo
	commit_message: automatically deployed to github
```

`$GITHUB_REMOTE` needs to be set in your pipeline environment variables