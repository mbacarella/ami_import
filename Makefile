default: build


install-deps:
	opam pin add awsm0 ~/projects/awsm --yes
	opam pin add awsm-codegen ~/projects/awsm --yes
	opam pin add awsm ~/projects/awsm --yes
	opam pin add awsm-http ~/projects/awsm --yes
	opam pin add awsm-async ~/projects/awsm --yes
	opam pin add awsm-ec2 ~/projects/awsm --yes
	opam pin add awsm-ec2-async ~/projects/awsm --yes
	opam pin add awsm-ebs ~/projects/awsm --yes
	opam pin add awsm-ebs-async ~/projects/awsm --yes


build:
	dune build .
