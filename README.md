# speccioR
Basic R wrapper to interact with the SPECCIO Spectral Information System (https://github.com/ahueni/SPECCHIO). IN EARLY DEVELOPMENT!

A rich multi-OS Java library is already available, hence the aim is to use calls to this API
when possible, rather than write native R code.

## Requirements

+ Java and Java Development Kit (JDK);
    + check if JRE or JDK is needed!
    + Ubuntu 16.04: `sudo apt-get update; sudo apt-get install default-jdk`
+ SPECCIO Java client;
    + download installer from http://specchio.ch/app_download.php
    + extract installer
    + make `specchio-client-installer.jar` executable
    + double click to install and follow instructions
    + keep note of the instalation directory
+ RJava (requires JDK?)


## Roadmap

+ [x] Setup paths to SPECCHIO java client and add user credentials to SPECCHIO configuration.
+ [x] Launch native SPECCHIO java client
+ [] create connection to SPECCHIO java client library using rJava

## Resources

+ [SPECCHIO_R_Guide_V3.1.0](ftp://v473.vanager.de/user_guides/SPECCHIO_R_Guide_V3.1.0.pdf)
