#1. Read multiple json files into a working directory for 
further converting into a dataset.      
I have files text1, text2, text3 in the directory json.

(Not Discussed  in the class)

#  2. Parse the following JSON into a data frame 

(Not Discussed in the Class)

js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

Ans : temp <- list.files(path, pattern = "*.json", full.names = TRUE);
movies <- purrr::map_df(temp, function(x)
  { purrr::map(jsonlite::fromJSON(x), function(y) 
    ifelse(is.null(y), NA, y)) })

# 3. Write a script for variable binning using R. 

( Not discussed in the Class)


Bin(data, nbins=5, labels=Null, 
    method = c("length", "content", "clusters"), 
    na.omit =TRUE)


data :       data frame or vector which contains the data.

nbins :     number of bins (= levels).

Labels :   character vector of labels for the resulting category.

Method :  character string specifying the binning method

na.omit : logical value whether instances with missing values should be removed.

