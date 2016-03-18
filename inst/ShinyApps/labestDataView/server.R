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

shinyServer(function(input, output) {
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
    output$LINK <- renderUI({
        HTML(sprintf(paste0('<center><a href="http://127.0.0.1:%d',
                            '/library/labestData/html/%s.html" target="_blank">',
                            'Documentação</a></center>'),
                     input$PORTA,
                     input$DATASET))
    })
})
