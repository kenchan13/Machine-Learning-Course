# Data Preprocessing

# Importing the dataset
datasets = read.csv('Data.csv')

#Taking care of missing data


datasets$Age = ifelse(is.na(datasets$Age),
                     ave(datasets$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     datasets$Age)


datasets$Salary = ifelse(is.na(datasets$Salary),
                      ave(datasets$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                      datasets$Salary)