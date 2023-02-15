(lang dune 3.6)

(generate_opam_files true)

(package
 (name ami-import)
 (synopsis "An IPXE AWS AMI import script")
 (depends awsm-ec2-async awsm-ebs-async core))
