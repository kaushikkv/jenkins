# jenkins

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with jenkins](#setup)
    * [What jenkins affects](#what-jenkins-affects)
    * [Setup requirements](#setup-requirements)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Description

This module does easy installation of Jenkins a continuous integration open source tool.

This module can even do the prerouting of the port from 8080 (jenkins default port) to any port available and your choice.
## Setup

### What jenkins affects **OPTIONAL**
Jenkins is a self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.

Jenkins can be installed through native system packages, Docker, or even run standalone by any machine with a Java Runtime Environment (JRE) installed.
### Setup Requirements **OPTIONAL**

To install this moduele, the prerequisites are you must have wget installed in your machine,and java 1.8(even openjdk works).
## Usage

In the node definetion you can define a paramerter by name "to_port" so that you can redirect the jenkins port to the one you wished. if you dont mention any port the default value is 80, so you must try http://ipaddress to access jenkins through browser. in case you give any port then http://ipaddress:to_port to access jenkins page.
## Reference

Example of the node definetion:
 
    node 'nodename'{
          class{'::jenkins':
                 to_port => '443'
          }
