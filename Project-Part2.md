##### **Data Mining with R**

  Here in this part of project I have decided to work in with my
previous dataset from my [Project 1](https://rpubs.com/sacsam005/808877)
doing some classifications.

**LOADING MY EXCEL DATA INTO R ENVIRONMENT**

    library(readxl)
    Results <- read_excel("Results.xlsx")
    str(Results)

    ## tibble [380 × 6] (S3: tbl_df/tbl/data.frame)
    ##  $ Home_team: chr [1:380] "Arsenal" "Watford" "Chelsea" "Crystal Palace" ...
    ##  $ Away_team: chr [1:380] "Leicester City" "Liverpool" "Burnley" "Huddersfield Town" ...
    ##  $ Home_goal: num [1:380] 4 3 2 0 1 0 1 0 0 4 ...
    ##  $ Away_goal: num [1:380] 3 3 3 3 0 0 0 2 2 0 ...
    ##  $ Result   : chr [1:380] "H" "D" "A" "A" ...
    ##  $ Season   : chr [1:380] "2017-2018" "2017-2018" "2017-2018" "2017-2018" ...

    summary(Results$Home_goal)

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##   0.000   1.000   1.000   1.532   2.000   7.000

**Total no. of Observations and Variables**

    dim(Results)

    ## [1] 380   6

**TAKING SAMPLE DATA**

  I am taking almost 1/3 no. of observations from my data set as a
sample.

    s <- sample(380, 125)
    s

    ##   [1] 300 107 373 159 285 280  49 307 154 168  71 262 117  75  82   5   3 208
    ##  [19] 222 253 249 288  61 272  21 316 211  18 115  44 315  92 177 337  56  72
    ##  [37]  14 113 229 305 172  22 246 333 106 296 111  34 171  78 191 182  68 322
    ##  [55] 231   7 302 273 355 239 112 339 216 187 244 198  39 311 335 197  59 204
    ##  [73] 207 260 266 353 327  54  63 206 164 157 185 308 256 161 354 292 278 165
    ##  [91] 138 294 120  52 186 162 372  80 362 132 167  30 314  53  17 181 170 264
    ## [109] 277 100 237  98 289 156  77 212 274 293 267 203  86 127  79 323 358

  Lets separate my Results data into two parts. I’m gonna split it into
traning and testing data.

    #split data into training data
    Results_train <- Results[s,]
    dim(Results_train)

    ## [1] 125   6

    #split data into testing data
    Results_test <- Results[-s,]
    dim(Results_test)

    ## [1] 255   6
