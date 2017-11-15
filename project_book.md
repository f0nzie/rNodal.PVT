# rNodal.PVT Project Book



## Add standard equations

* The name of the author will be the name of the R script
* Compare multiple sources proper equation formulation. Look for 
  * units of temperature
  * If oil density is in API or specific gravity
* If possible write the equation in `Latex` in a vignette or notebook




## Parameters in Functions

* Should temperature be entered as Fahrenheit or Rankine?
* Should oil density be entered as API of specific gravity?
* Should we use `dots` for the variables?
* How should functions be named? For instance, if we have the oil density parameter as `oil.API`, how then a function that converts oil specific gravity to API would be named? 
  * `convert_to_oil.api`
  * `convert(from= "oil.sg", to = "oil.api")`. This approach requires extra work for validation, numeric range and units
  * ​

## Build unit tests for equations

* Cite sources.
* Use examples from literature. Take note of of page, chapter



## Build Comparative plots



## Constants in Equations

* Should they be explicit or residing in a matrix/dataframe?



## Name of the Variables

* `oil.API`:
* `oil.sg`
* `gas.sg`
* `fluid.tempR`
* `fluid.tempF`
* ​



## 



