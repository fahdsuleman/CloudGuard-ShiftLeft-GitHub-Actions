# Check Point CloudGuard ShiftLeft integration with GitHub actions - basic demo

This repository provides a self-contained demo of integration of Check Point shiftleft with GitHub actions. To trigger the GitHub actions worflow, make and commit any change to files in terraform folder.

CloudGuard ShiftLeft CLI tool is a framework that will enable you to access all the various blades that CloudGuard offers quick and easy for integration within your pipeline.
CloudGuard ShiftLeft will allow you to scan source code, Docker container images and serverless deployment packages, Terraform templates, and more. 
The ShiftLeft binary or Docker container will integrate posture management and SAST to your CI/CD deployment pipelines for any CI server.

The ShiftLeft Binary can be installed on Windows, Linux or MacOS.

The ShiftLeft container is available on Docker Hub:
https://hub.docker.com/r/checkpoint/shiftleft

Shiftleft SAST and static code analysis for code and container images will scan for CVEs, CWEs, Malware and credentials by leveraging Check Point ThreatCloud which is a collaborative network and cloud-driven knowledge base that delivers real-time dynamic security intelligence.

Requirements: a CloudGuard Cloud Security Posture Management (formerly known as Dome9) account with active TF rulesets.

## The following blades are currently available for use within the framework:
                                                                                       
### Git code-scan	      

The code-scan blade provides Source-code security and visibility into the risk analysis of projects in Git repositories.

### iac-assessment	

The iac-assessment blade will scan Infrastructure-as-code templates, enabling DevOps and security teams to identify insecure configurations	

### image-scan	   

The image-scan blade will scan Docker container images for security risks and vulnerabilities

#### Please generate a CG CSPM token and add it to repository settings using CHKP_CLOUDGUARD_ID and CHKP_CLOUDGUARD_SECRET.

## Demo logic
A GitHub action is implemented to trigger terraform templates scan with iac-assessment on every commited changes to files in terraform folder.

To demonstrate image-scan, the GitHub action downloads a vulnerable container image, saves it and provide the input to containerized shiftleft.

To demonstrate code-scan, the entire repository is fed to containerized shiftleft which detects and inspects provided application code sample.
