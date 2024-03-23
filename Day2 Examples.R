install.packages("nycflights13")
library("nycflights13")
View(flights)
View(planes)
#primary key is here in this example the tailnum
#It uniquely identifies an observation in its own table
#with this info we can merge the two data sets and test the hypothesis
#if smaller planes have a larger delay than lager planes

library("dplyr")
tbl3 <- left_join(planes, flights,
                  by = "tailnum")
View(tbl3)

install.packages("nycflights23")
library("nycflights23")
library("dplyr")
View(flights)
View(planes)
new_table <- left_join(planes, flights,
                       by = "tailnum")
View(new_table)

library("ggplot2")
ggplot(new_table, aes(x = seats, y = arr_delay)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Seats", y = "Arrival Delay", title = "Scatter Plot of Arrival Delay vs. Seats")+
  theme_minimal()
flights
planes
new_table

ggplot(new_table, aes(x = seats, y = dep_delay)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Seats", y = "Departure Delay", title = "Scatter Plot of Arrival Delay vs. Seats")+
  theme_minimal()

ggplot(new_table, aes(x = dep_delay, y = seats)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Departure Delay", y = "Seats", title = "Scatter Plot of Arrival Delay vs. Seats")+
  theme_minimal()

#High statistical power
summary(lm(arr_delay~seats, data = new_table))
#if I compute the T-Value it gives me the value of 33.42857, which is way larger
#than 1.96; so I can reject the Null Hypothesis



#delay your request so that the server won't block you! 
#most successfull function for hacker
Sys.sleep(2)


#piped code
library("tidyverse")
library("rvest")
css_selector <- ".teaser__title-name"
read_html("https://www.nzz.ch") %>% 
  html_elements(css = css_selector) %>% 
  html_text()

#get links
links <- read_html("https://www.nzz.ch") %>% 
  html_elements(css = "a") %>% 
  html_attr(name = "href")

#whtml_attr()#without pipes
page <- read_html("https://www.nzz.ch")
nodes <- html_elements(page, css = css_selector)
View(page)
View(nodes)
html_text(nodes)

links <- links[10:225]
links[1:10]
str_c("https://www.nzz.ch", links)


#1. Create an empty container to place the results
articles <- vector(mode = "list", length = length(links))

#2. Build the body of the for loop

#3. I loop over the iterator "i"

for (i in 1:length(links)) {
  cat("iteration:", i, "\n")
  articles[[i]] <- read_html(links[i]) %>% 
    html_elements(css = "p") %>% 
    html_text()
  Sys.sleep(runif(n = 1, min = 0.2, max = 0.4))
}

#I got the links, now I want to scrape each page:


CE1 <- read.csv("C:/Users/Nina/Documents/WiLu/Master/FS24/Data Mining for Political and Social Sciences using R/CE1/1000 companies list and rating.csv")
View(CE1)
