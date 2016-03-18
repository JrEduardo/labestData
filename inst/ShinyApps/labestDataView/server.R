##-------------------------------------------
## server.R

library(shiny)
library(xtable)

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


shinyServer(
    function(input, output, session) {
        output$TABLE <- renderPrint({
            da <- eval(parse(text = input$DATASET))
            a <- switch(class(da),
                        data.frame = da,
                        numeric = {
                            da <- data.frame(da)
                            names(da) <- input$DATASET
                            da
                        },
                        integer = {
                            da <- data.frame(da)
                            names(da) <- input$DATASET
                            da
                        })
            dig <- sapply(a, howmanydigits)
            print(xtable(a, digits = c(0, dig)), type = "html")
        })
        output$DOWNLOADDATA <- downloadHandler(
            filename = function() {
                sprintf("%s.txt", input$DATASET)
            },
            content = function(file) {
                write.table(eval(parse(text = input$DATASET)),
                            file = file,
                            sep = "\t",
                            row.names = FALSE,
                            quote = FALSE)
            })
        output$DOC <- renderPrint({
            tmp <- tempfile()
            static_help("labestData", input$DATASET, tmp)
            out <- readLines(tmp)
            headfoot <- grep("body", out)
            cat(out[(headfoot[1] + 1):(headfoot[2] - 2)], sep = "\n")
        })
    }
)
