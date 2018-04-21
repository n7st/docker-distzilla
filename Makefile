IMAGE=poum/distzilla
VERSION=6.012

build: Dockerfile
	docker build -t $(IMAGE):$(VERSION) .

test:
	docker run --rm $(IMAGE):$(VERSION) help

tag: 
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):6
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):$(VERSION)
	docker tag -f $(IMAGE):$(VERSION) $(IMAGE):latest

push: 
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):6
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
