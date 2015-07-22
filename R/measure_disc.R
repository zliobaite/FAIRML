#' measure_disc Function
#'
#' This function allows you to masure discrimination in data using different measures.
#' @param data data containint at least a column 'y' (target) and a column 's' (protected attribute)
#' @keywords discrimination measures
#' @export
#' @examples
#' measure_disc ()


measure_disc <- function(data)
{
    n <- dim(data)[1]
    ps <- table(data[,'s'])/n
    pc <- table(data[,'c'])/n
    pjoint <- table(data[,'c'],data[,'s'])/n
    
    ddif <- pjoint['1','M']/ps['M'] - pjoint['1','F']/ps['F']
    
    if (ddif>0)
    {
        m1 <- pc['1']/ps['M']
        m2 <- pc['0']/ps['F']
    }else{
        m1 <- pc['1']/ps['F']
        m2 <- pc['0']/ps['M']
    }
    dmax <- min(m1,m2)
    ddnorm <- ddif/dmax
    
    dratio <- (pjoint['1','M']/ps['M'])/(pjoint['1','F']/ps['F'])
    delift <- (pjoint['1','M']/ps['M'])/pc['1']
    dolift <- (pjoint['1','M']/pjoint['1','F'])/(pjoint['0','M']/pjoint['0','F'])
    
    Hc <- compute_ent(pc)
    Hs <- compute_ent(ps)
    MI <- Hc + Hs - compute_ent(pjoint)
    MInorm <- MI / sqrt(Hc*Hs)
    
    dd <- cbind(ddif,ddnorm,dratio,delift,dolift,MInorm)
    return(dd)
}