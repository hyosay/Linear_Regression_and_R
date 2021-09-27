# 데이터 기초분석수업
### 1주차(1강 ~ 3강)
데이터 분석가들이 많이 쓰는 **데이터 분석 전문 도구**    
>예전에는 SPSS, SAS를 많이 사용했지만 최근에는 R 또는 python.pandas, numpy, matplotlib을 많이 사용한다.
>
> regression analysis, machine learning, text mining, 소셜 네트워크 분석, 지도 시각화, 주식 분석, 이미지 분석, 사운드 분석, 웹 애플리케이션 개발 등에 사용됨


#### 변수
변하는 수를 **변수**라고 칭한다.
```r
a <- 1  # a라는 변수에 1 넣음
b <- 2  # b라는 변수에 2 넣음
#연산
a + b # 3
a - b # -1
```

여러 값으로 구성된 변수 만들기
```r
var1 <- c(1, 2, 5, 7, 8)
var1
## [1] 1 2 5 7 8

var2 <- c(1:5) #슬라이싱
var2
## [1] 1 2 3 4 5

var3 <- seq(1, 5)
## [1] 1 2 3 4 5

var4 <- seq(1, 10, by= 2)
## [2] 1 3 5 7 9
#seq(from='', to='', by='') from, to 생략가능
#seq(length='') from에서 to 까지 length만큼 쪼개기
#seq(length.out='')
```

### 2주차

qqplot2 패키지 사용 해보기
```r
install.packages('ggplot2')
library('ggplot2')

x  <- c('a', 'b', 'c', 'c', 'd')

qplot(x)
#qplot(x, col, main)
#qplot(data, x, y, geom, colour)
qplot(data= car_mpg, x = manufacturer, y=drv, geom='boxplot', colour=='red')
```
![image](https://user-images.githubusercontent.com/46950334/133062564-680b13ae-8485-40dc-86df-f7ecea98e262.png) 
![image](https://user-images.githubusercontent.com/46950334/133062844-e62e9a86-aaad-40f8-b725-5e9e446a99f7.png)


각 변수 병합하기

|이름|영어성적|수학성적|
|---|---|---|
|김지훈|90|90|
|이유진|20|10|
|박동현|80|100|
|김민지|15|20|

```r
name <- c('김지훈', '이유진', '박동현', '김민지')
eng <-  c(90, 20, 80, 15)
math <- c(90, 10, 100, 20)

df_score <- data.frame(name, eng, math)
df_score

#    name eng math
#1 김지훈  90   90
#2 이유진  20   10
#3 박동현  80  100
#4 김민지  15   20
```

### 9월 27일

excel파일 불러오기

```r
install.packages('readxl')
library(readxl)
ex_exam <- read_excel("excel_exam.xlsx")

ex_exam2 <- read_excel("/Users/jeonhyoseong/Downloads") #경로를 지정
head(ex_exam)
#     id class  math english science
#  <dbl> <dbl> <dbl>   <dbl>   <dbl>
#1     1     1    50      98      50
#2     2     1    60      97      60
#3     3     1    45      86      78
#4     4     1    30      98      58
#5     5     2    25      80      65
#6     6     2    50      89      98

read_csv("excel_exam.csv")
readRDS("excel_exam.rds")
```
