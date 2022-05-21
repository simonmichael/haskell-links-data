update: \
	update-lambdabot

update-lambdabot: get-lambdabot commit-lambdabot

get-%:
	./$*-get >$*.tsv

commit-%:
	@( git commit -m "update $*" -- $*.tsv 2>&1 | grep -E '(^\[|file changed)' ) || echo "no changes"
