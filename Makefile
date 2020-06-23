index:
	helm package sources/*
	helm repo index --url https://brainworks-io.github.io/helm-charts .

push:
	git add .
	git commit -m "Updated all charts"
	git push

all: index push
