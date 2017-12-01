#' thrust_changes
#' 
#' See the list of file/folder name changes in the internal Thrust C++ library.
#' 
#' @examples
#' thrust::thrust_changes()
#' 
#' @export
thrust_changes = function()
{
  cat(paste(readLines(system.file("Thrust_CHANGES", package="thrust")), collapse="\n"), "\n")
}
