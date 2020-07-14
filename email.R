


library(blastula)
library(ggplot2)


create_smtp_creds_key(
    id = "gmail",
    user = "dddd@montereycoe.org",
    provider = "gmail",
#    overwrite = FALSE
)





plot <- qplot(disp, hp, data = mtcars, colour = mpg)
plot_email <- add_ggplot(plot)



email <- compose_email(
    body = md(c(
        "Hi, I'm testing out sending emails via rstudio.  Just let me know if you get it, but you can ignore the graph below.",
        plot_email
    ))
)




email %>%
    smtp_send(
        from = "dddd@montereycoe.org",
        to = "aaaa@montereycoe.org",
        subject = "Testing the `smtp_send()` function",
        credentials = creds_key(id = "gmail")
    )

