default: build

.PHONY: check-env
check-env:
ifndef AWSM_HOME
	$(error must export AWSM_HOME to path to your awsm repo)
endif

.PHONY: install-deps
install-deps: check-env
	opam pin add awsm0 $(AWSM_HOME) --yes
	opam pin add awsm-codegen $(AWSM_HOME) --yes
	opam pin add awsm $(AWSM_HOME) --yes
	opam pin add awsm-http $(AWSM_HOME) --yes
	opam pin add awsm-async $(AWSM_HOME) --yes
	opam pin add awsm-ec2 $(AWSM_HOME) --yes
	opam pin add awsm-ec2-async $(AWSM_HOME) --yes
	opam pin add awsm-ebs $(AWSM_HOME) --yes
	opam pin add awsm-ebs-async $(AWSM_HOME) --yes

.PHONY: build
build:
	dune build .
