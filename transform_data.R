id <- c(1:10)
name <- c("Allie Nancy", "JOsh Gribbon", "Golda Sam", "Akin Adeoye", "Melissa Cooper", "Josh Nash", "Danny Fields", "Leo Sanda", "Candace Mendes", "Peter Cleaver")
job_title <- c("Professioal", "Programer", "Management","Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)

separate(employee, name, into=c('first_name', 'last_name'), sep=' ')

## unite(employee, 'name', first_name, last_name)