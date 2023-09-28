# Terraform Beginner Bootcamp 2023

## Semantic Versioning

this project is going to utilise semantic veriosning for its tagging
[semver.org](https://semver.org/)

The format:




Given a version number**MAJOR.MINOR.PATCH**, increment the:

- **MAJOR** version when you make incompatible API changes eh `1.0.1`
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

### To view the Linux OS 
[Check the OS Version in Linux](https://www.geeksforgeeks.org/how-to-check-the-os-version-in-linux/)
============================================
cat /etc/os-release
============================================
### To continue with the project we have to follow best practise steps!
Create a new issue.

-There is an issue with installing the terraform cli.
We need to go and make sure it automates without user input,

assign a label - BUG



create a branch for it.

### Fixing the terraform cli installation
[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

at the GITPOD.yml
- run line by line to check where the issue resides,

- install the terraform cli from scratch
- Create a bit folder
	- create a file "install terraform cli"
	name it sh - as if a bash script

```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint


sudo apt update

sudo apt-get install terraform
```

---------------------------------------------------------------
make it exe
## Sha-bang
```
#!/usr/bin/env bash
```
to run it
---
```
source ./bin/install_terraform_cli.sh
```
---
```
./bin/install_terraform_cli.sh
```

### Linux permision!
[chmod instructions](https://en.wikipedia.org/wiki/Chmod)
```
ls -la
ls -la ./bin

chmod u+x ./bin/install_terraform_cli.sh

```
to make everything executable we use 777
chmod 777 ./bin/install...

in the gitpod.yml file we delete the 4 installartion commands and replace with the bash script

```
source ./bin/install_terraform_cli
```
[GitPod_Lifecycle](https://www.gitpod.io/docs/configure/workspaces/tasks)

!!
init - before 
!!

### Working with Env Var

We can list out all Enviroment Variable with a command:
`
env
`
We can filter specific env var using grep:
```
env | grep GITPOD
```
### Setting and unseting in the terminal

We can set using:
'export Hello='World'
We can unset using:
'unset Hello'

We can set an env var temporarily when just running a command
```sh
Hello='World' ./bin/print_massage
```


Within the bash script we can set env without writting export eg.

```sh
#!/usr/bin/env bash
HELLO='world'
echo $HELLO
```

### Printing Env Vars

we can print an env var using echo eg. `echo $HELLO`

### Scoping of Env Var

When u open a new bash terminal in VSCode it not have the env var set up.

If you want to ENV VAr to persist across all future bash terminals that are open you need to set env var in you bash profile eg ' bash_profie'

### Persisting Env Vars in Gitpod 

We can persist env vars into gitpod by storing then in GitPod Secrets Storage.

```
gp env HELLO='world'
```
All future workspaces lunched will set then env vars for all bash terminals opened in the workspaces.

You can also set env vars in the `gitpod.yml` but this can only contain non-sensitive env vars.