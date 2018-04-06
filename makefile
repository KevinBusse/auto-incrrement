.PHONY: git

git:
	$(eval VERSION=$(shell git describe --tags --abbrev=0 | awk -F. '{$$NF+=1; OFS="."; print $0}'))
	git add .
	git commit -m "$m"
	git push origin master
	git tag -a $(VERSION) -m "new release"
	git push origin $(VERSION)
