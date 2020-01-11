# Recon
Recon tool for Fun and Fun
![alt text](https://raw.githubusercontent.com/nullahm/Recon/master/Screenshot.png)

## Contribution Guide

### Adding new Tool

Taking example of adding new as Option # in the main menu

1. Create new Directory in Project's Root with name Tool#
2. Create new file run.sh in ProjectRoot/Tool# directory which will invoke the tool 
3. Add new method with name operation# in options.sh
4. Add new entry in options() method in run.sh
5. Add new case block in switch-case in run.sh 
