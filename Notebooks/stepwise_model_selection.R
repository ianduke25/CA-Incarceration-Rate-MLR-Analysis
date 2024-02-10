data <- read.csv('/Users/cherry/Desktop/LGA-final/Notebooks/predictors.csv')
data

fullModel <- lm(formula = boxcox_incarceration_rate ~ unemployment_rate + factor(Area_Type) + log_population + percent_poverty + white_proportion + black_proportion + native_american_proportion + asian_proportion + native_hawaiian_pac_islander_proportion  + education_less_than_highschool + education_highschool + education_some_college + education_bachelors_or_higher + total_population_16_to_19, data = data)
baseModel <- lm(boxcox_incarceration_rate~1, data = data)
step(baseModel,scope=list(upper=fullModel,lower=~1),direction="forward")

data <- read.csv('/Users/cherry/Desktop/LGA-final/Notebooks/predictors_outliers_dropped.csv')
data

fullModel <- lm(formula = boxcox_incarceration_rate ~ unemployment_rate + factor(Area_Type) + log_population + percent_poverty + white_proportion + black_proportion + native_american_proportion + asian_proportion + native_hawaiian_pac_islander_proportion  + education_less_than_highschool + education_highschool + education_some_college + education_bachelors_or_higher + total_population_16_to_19, data = data)
baseModel <- lm(boxcox_incarceration_rate~1, data = data)
step(baseModel,scope=list(upper=fullModel,lower=~1),direction="forward")
