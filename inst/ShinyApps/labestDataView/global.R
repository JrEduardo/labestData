##-------------------------------------------
## global.R

library(xtable)
library(labestaData)

L <- ls("package:labestData")
i <- sapply(L, function(x) {
    class(eval(parse(text = x)))
})
L <- L[i %in% c("data.frame", "numeric", "integer")]

howmanydigits <- function(x) {
    x <- na.omit(x)
    if (is.numeric(x) && all(x%%1 == 0)) {
        0
    } else if (is.numeric(x)) {
        1 + floor(log10(1/min(diff(sort(unique(x))))))
    } else {
        0
    }
}

static_help <- function(pkg, topic, out,
                        links = tools::findHTMLlinks()) {
    pkgRdDB = tools:::fetchRdDB(file.path(
        find.package(pkg), 'help', pkg))
    force(links)
    tools::Rd2HTML(pkgRdDB[[topic]], out, package = pkg,
                   Links = links, no_links = is.null(links))
}
