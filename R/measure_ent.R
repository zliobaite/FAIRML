#' compute_ent Function
#'
#' This function computes entropy
#' @param xx a table of (joint) probabilities
#' @keywords entropy
#' @export
#' @examples
#' compute_ent ()

compute_ent <-function(xx)
{
	ind <- which(xx>0)
	xx <- xx[ind]
	H <- -sum(log2(xx)*xx)
	return(H)
}
