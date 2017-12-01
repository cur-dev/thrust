# thrust

* **Version:** 1.8.2
* **Status:** [![Build Status](https://travis-ci.org/wrathematics/thrust.png)](https://travis-ci.org/wrathematics/thrust)
* **License:** [Apache 2.0](https://opensource.org/licenses/Apache-2.0)
* **Author:** Drew Schmidt (package creator)


Thrust is a high-level C++ library for developing parallel code to be run on either a GPU or a multicore processor.  It achieves this by selecting a "backend" at compilation time.  So you only have to write your code once, but you can target different hardware architectures.

This is merely a convenient packaging of Thrust for use with R packages (I had nothing to do with creating the Thrust C++ library).  To use the package, simply set your `LinkingTo` field to include thrust (this package).  This is conceptually similar to the [BH package](https://cran.r-project.org/web/packages/BH/index.html) for Boost.

Some file/folder names were changed in order to satisfy `R CMD check`.  Most users should not be affected by these changes, because the files are buried pretty deep in the source tree and would likely only be directly included by a Thrust developer.  For a full list of changes, see `inst/Thrust_CHANGES` of the package source, or run `thrust::thrust_changes()`.

The package is provided under the same license as Thrust, Apache 2.0, and its version number mirrors it as well.
