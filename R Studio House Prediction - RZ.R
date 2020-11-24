lm(data$SalePrice ~ data$MSZoning + data$Street + data$LotArea)

full.model <- lm(SalePrice ~ ., data=data)
library(MASS)

fwd.step.model <- stepAIC(full.model, direction = "forward", trace = FALSE)
summary(fwd.step.model)
AIC.base = extractAIC(fwd.step.model, k=log(n))
signif(AIC.base, digits=6)

bwd.step.model <- stepAIC(full.model, direction = "backward", trace = FALSE)
summary(bwd.step.model)