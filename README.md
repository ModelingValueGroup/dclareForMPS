# DclareForMPS
DclareForMPS adds a language aspect named 'rules' to MPS.  
A rule typically derives some part of a model.  
Rules can trigger other rules.  
A rule runs when something changes in the models that is read by this rule (reactive).  
The system terminates on a fixpoint (if no changes occur anymore).  
The regular MPS base-language can be used to specify the rules.  
Rules definitions typically use quotations (light or not) to define the derivations.  
The rules are executed incrementally, meaning they perform a minimal amount of changes to derive the defined patterns (expressed in quotations).

## Work in progress
DclareForMPS is a work in progress. In this phase of development, no guarantees are given on the stability and scalability of the software.  
All feedback, functional or technical, is appreciated.

## JDclare
DclareForMPS uses the transactions framework and the collections library that are part of the JDclare project.  
The JDclare project can be found here: [JDclare on GitHub](https://github.com/ModelingValueGroup/jdclare)

## Installation
In an installation of JetBrains MPS (2018.3 or higher) ...  
1. install the DclareForMPS.zip plugin  
2. open one of the example MPS Projects from [DclareForMPS_Examples on GitHub](https://github.com/ModelingValueGroup/DclareForMPS_Examples)  
3. switch on the Dclare engine (Settings... > Dclare)  
![picture alt](docs/engineOn.jpg "Engine on")  
4. rebuild the example project  

## Examples
Multiple examples can be found in the DcalreForMPS_Examples repository on GitHub:
[DclareForMPS_Examples on GitHub](https://github.com/ModelingValueGroup/DclareForMPS_Examples)

Please refer to the README.md files that are part of the examples
