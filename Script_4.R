items(Groceries)
summary(Groceries)
1372/9835*100
9835-2159
inspect(Groceries[3:6])
itemFrequency(Groceries[,1])
itemFrequency(Groceries[,2:20])
itemFrequencyPlot(Groceries, support = 0.15)
itemFrequencyPlot(Groceries, topN = 10)
image(Groceries[1:169])
apriori(Groceries)
overview <- apriori(Groceries, parameter = list(support = 0.006, confidence = 0.25, minlen = 3))
overview
inspect(overview[1:10])
chocrules <- subset(overview, items %in% "chocolate")
chocrules
overview_view <- as(overview, "data.frame")
str(overview_view)
