# Check Point CloudGuard ShiftLeft integration with GitHub actions - basic demo

This repository provides a self-contained demo of integration of Check Point shiftleft with GitHub actions. Fork it and trigger the GitHub actions worflow by adding a comment to webapp.js.

[CloudGuard ShiftLeft](https://github.com/dome9/shiftleft) will allow you to scan source code, Docker container images and serverless deployment packages, Terraform templates, and more. 
The ShiftLeft binary or Docker container will integrate posture management and SAST to your CI/CD deployment pipelines for any CI server.

The ShiftLeft container is available on [Docker Hub](https://hub.docker.com/r/checkpoint/shiftleft).

Requirements: a CloudGuard Cloud Security Posture Management (formerly known as Dome9) account from [here](https://secure.dome9.com/v2/register/invite) with active TF rulesets.

## The following blades are currently available for use within the framework:
                                                                                       
### git code-scan	      

The `code-scan` blade provides source code security and visibility into the risk analysis of projects in Git repositories.

### iac-assessment	

The `iac-assessment` blade will scan Infrastructure-as-Code templates, enabling DevOps and security teams to identify insecure configurations	

### image-scan	   

The `image-scan` blade will scan Docker container images for security risks and vulnerabilities

#### Please generate a CG CSPM token and add it to repository settings using CHKP_CLOUDGUARD_ID and CHKP_CLOUDGUARD_SECRET.

## Demo logic

Commit will trigger the GitHub actions workflow which chains `code-scan` (the entire repository is fed to containerized shiftleft), `image-scan` (which packs webapp into a Docker container image scanned by shiftleft) and iac-assessment (which scans terraform template) [TO DO: and deploys the containerized webapp].

The jobs are sequential: code-scan will fail. Comment the `needs:` lines in `.github/workflows/main.yml` to have the jobs run in parallel.
