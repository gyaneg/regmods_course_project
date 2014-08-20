library(ggplot2)
p1 <- ggplot(mtcars, 
        aes(wt, mpg, col=factor(mtcars$am, levels=0:1, labels=c("Auto", "Man"))))
p1 <- p1 + geom_boxplot(position="dodge")
p1 <- p1 + theme(legend.position="bottom")
p1 <- p1 + scale_color_discrete(name="Transmission Type")

p2 <- ggplot(mtcars, aes(wt, mpg))
p2 <- p2 + geom_point(aes(color=factor(am, levels=0:1, labels=c("Auto", "Man"))))
p2 <- p2 +theme(legend.position="bottom")
p2 <- p2 + scale_color_discrete(name="Transmission Type")
# http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)
source("multiplot.R")
multiplot(p1, p2, cols=2)
