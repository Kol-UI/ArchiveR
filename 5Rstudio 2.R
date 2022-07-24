install.packages("ggplot2")
install.packages("psych")
install.packages("scatterplot3d")
install.packages("scatterplot")
library("ggplot2")
library("psych")
library("scatterplot3d")
library("scatterplot")

dataBase <- read.csv("/Users/nathancourbet/Desktop/5DATA_1_vir.CSV")
is.na(dataBase)

table(dataBase$Job)
ggplot(dataBase,aes(as.factor(ID))) + geom_bar()
print(dataBase)

summary(dataBase$Campus)

ggplot(dataBase, aes(x = Campus)) +
  geom_dotplot(fill = "green", color = "yellow") + 
  labs(title = "Participants by Campus", y = "Proportion", x = "Campus")

ggplot(dataBase, aes(x = Campus)) +
  geom_dotplot(fill = "green", color = "yellow") + 
  labs(title = "Participants by Campus", y = "Proportion", x = "Campus")




table(dataBase$Campus)
prop.table(table(dataBase$Campus))
ggplot(dataBase,aes(as.factor(Campus))) + geom_bar(fill = "green", color = "yellow") + 
  labs(title = "Participants by Campus",
       y = "Proportion",
       x = "Campus")

table(dataBase$Study.year)
prop.table(table(dataBase$Study.year))
ggplot(dataBase,aes(as.factor(Study.year))) + geom_bar(fill = "green", color = "yellow") + 
  labs(title = "Participants by Study.year",
       y = "Proportion",
       x = "Study.year")

#charts
ggplot(dataBase,aes(as.factor(Job))) + geom_bar()
ggplot(dataBase,aes(as.factor(Study.year))) + geom_bar()
ggplot(dataBase,aes(as.factor(Pro.contracts))) + geom_bar()

#proportions
prop.table(table(dataBase$Pro.contracts))
prop.table(table(dataBase$Job))
prop.table(table(dataBase$Campus))

#frequencies
table(dataBase$ECTS)
table(dataBase$Campus)
table(dataBase$Job)
table(dataBase$Study.year)

# associations
ggplot(dataBase, aes(x = Job, fill = Campus)) + 
  geom_bar(position = "stack") + scale_fill_brewer(palette="Set1")
ggplot(dataBase, aes(x = Pro.contracts, fill = Campus)) + 
  geom_bar(position = "stack") + scale_fill_brewer(palette="Set1")


summary(dataBase$Job)
boxplot.stats(dataBase$Job)
describe(dataBase$Job)
ggplot(dataBase, aes(x = Job)) +
  geom_dotplot(fill = "green", 
               color = "yellow") + 
  labs(title = "Participants by job",
       y = "Proportion",
       x = "Jobs")

summary(dataBase$Campus)
boxplot.stats(dataBase$Campus)
describe(dataBase$Campus)
ggplot(dataBase, aes(x = Campus)) +
  geom_dotplot(fill = "green", 
               color = "yellow") + 
  labs(title = "Participants by Campus",
       y = "Proportion",
       x = "Campus")

summary(dataBase$ECTS)
boxplot.stats(dataBase$ECTS)
describe(dataBase$ECTS)
ggplot(dataBase, aes(x = ECTS)) +
  geom_dotplot(fill = "green", 
               color = "yellow") + 
  labs(title = "Participants by ECTS",
       y = "Proportion",
       x = "ECTS")

table(dataBase$Company)