# Check Point CloudGuard ShiftLeft integration with GitHub actions

## This demo contains malicious samples - please do not use in a production environment and do not clone on an unprotected machine


CloudGuard ShiftLeft CLI tool is a framework that will enable you to access all the various blades that CloudGuard offers quick and easy for integration within your pipeline.
CloudGuard ShiftLeft will allow you to scan source code, Docker container images and serverless deployment packages, Terraform templates, and more. 
The ShiftLeft binary or Docker container will integrate posture management and SAST to your CI/CD deployment pipelines for any CI server.

The ShiftLeft Binary can be installed on Windows, Linux or MacOS.

The ShiftLeft container is available on Docker Hub:
https://hub.docker.com/r/checkpoint/shiftleft

> docker pull checkpoint/shiftleft

Shiftleft SAST and static code analysis for code and container images will scan for CVEs, CWEs, Malware and credentials by leveraging Check Point ThreatCloud which is a collaborative network and cloud-driven knowledge base that delivers real-time dynamic security intelligence


## The following blades are currently available for use within the framework:
                                                                                       
### Git code-scan	      

The code-scan blade provides Source-code security and visibility into the risk analysis of projects in Git repositories.

> shiftleft code-scan 

### iac-assessment	

The iac-assessment blade will scan Infrastructure-as-code templates, enabling DevOps and security teams to identify insecure configurations	

> shiftleft iac-assessment 

### image-scan	   

The image-scan blade will scan Docker container images for security risks and vulnerabilities

> shiftleft image-scan 

#### Please add your Cloudguard credentials to repository settings using CHKP_CLOUDGUARD_ID and CHKP_CLOUDGUARD_SECRET.
#### If using SourceGuard, generate authentication token and add SG_CLIENT_ID and SG_SECRET_KEY to repository settings.
### Demo logic
A GitHub action is implemented to trigger terraform templates scan with iac-assessment on every commit
To demonstrate code-scan and image-scan, the GitHub action a vulnerable container image is downloaded, but not deployed.
