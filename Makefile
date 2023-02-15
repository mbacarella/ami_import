default: build

check-env:
ifndef AWSM_HOME
	$(error must set AWSM_HOME to path to your awsm repo)
endif

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

build:
	dune build .
