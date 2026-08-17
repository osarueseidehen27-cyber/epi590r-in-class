# load package
library(sjPlot)
library(sjmisc)
library(sjlabelled)

# sample data
data("efc")
efc <- as_factor(efc, c161sex, c172code)


m1 <- lm(barthtot ~ c160age + c12hour + c161sex + c172code, data = efc)
m2 <- lm(neg_c_7 ~ c160age + c12hour + c161sex + e17age, data = efc)

tab_model(m1)

data(mtcars)
m.mtcars <- lm(mpg ~ cyl + hp + wt, data = mtcars)
tab_model(m.mtcars)
