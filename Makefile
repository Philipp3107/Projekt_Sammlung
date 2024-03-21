signed_commit: 
	@echo "Running 'git push -u origin $(branch)'"
	git push -u origin $(branch)

commit:
	@echo "Running 'git commit -m $(message)'"
	git commit -m '$(message)'

add_all:
	@echo "Running 'git add .'"
	git add .

push_all: add_all commit signed_commit

# usage : make push_all branch=branch message='Message'
