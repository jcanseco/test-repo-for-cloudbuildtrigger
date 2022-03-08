PROJECT_ID := $(shell gcloud config get-value project)
SHORT_SHA := $(shell git rev-parse --short=7 HEAD)
IMAGE ?= gcr.io/${PROJECT_ID}/github/jcanseco/test-repo-for-cloudbuildtrigger:${SHORT_SHA}

docker-build:
	docker build . -f Dockerfile -t ${IMAGE}

docker-push:
	docker push ${IMAGE}

docker-run:
	docker run -t ${IMAGE}
