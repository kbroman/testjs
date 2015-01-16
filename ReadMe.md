### testjs: R package to test use of htmlwidgets package

[Karl W Broman](http://kbroman.org)

[htmlwidgets](http://htmlwidgets.org) is an R package to facilitate
the use of javascript-based data visualization from R.

This testjs package is a trial run for me to play with, as I learn
to use htmlwidgets.

#### Installation

Install testjs from its
[GitHub repository](http://github.com/kbroman/testjs).
You first need to install the
[devtools](https://github.com/hadley/devtools)
and [htmlwidgets](https://github.com/ramnathv/htmlwidgets) packages.

```S
install.packages(c("devtools", "htmlwidgets"))
```

Then install testjs using the `install_github` function in the
[devtools](http://github.com/hadley/devtools) package.

```S
library(devtools)
install_github("kbroman/testjs")
```

#### Example use

There's just one function, `iplot`, for an interactive
scatterplot. Here's an example of its use:

```S
library(testjs)
x <- rnorm(100)
grp <- sample(1:3, 100, replace=TRUE)
y <- x*grp + rnorm(100)
iplot(x, y, grp)
```


#### Licenses

Licensed under the [MIT license](LICENSE). ([More information here](http://en.wikipedia.org/wiki/MIT_License).)

testjs incorporates [D3.js](http://d3js.org)
([see its license](inst/d3/LICENSE)),
[d3.tip](http://github.com/Caged/d3-tip)
([see its license](inst/d3-tip/LICENSE)), and
[ColorBrewer](http://colorbrewer2.org) ([see its license](inst/colorbrewer/LICENSE)).
