# download / commit

update: \
	update-lambdabot \
	update-hackage \

update-lambdabot: get-lambdabot commit-lambdabot
update-hackage: get-hackage commit-hackage


get-%:
	./$*-get >$*.tsv

commit-%:
	@( git commit -m "update $*" -- $*.tsv 2>&1 | grep -E '(^\[|file changed)' ) || echo "no changes"


# publish / deploy

# publish to github only
p:
	@git push github

# forcibly
P:
	@git push -f github

# deploy to production only
d:
	@git push prod
	@ssh joyful.com 'cd src/haskell-links/data && git reset --hard && git fetch github'

# forcibly
D:
	@git pull prod main
	@git push -f prod
	@ssh joyful.com 'cd src/haskell-links/data && git reset --hard && git fetch github'

# publish and deploy
pd:
	@git pull prod main
	@git push github
	@ssh joyful.com "cd src/haskell-links/data && git pull github"
	@git fetch prod

# forcibly
PD: P D
