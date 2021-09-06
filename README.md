# 데이터 기초분석수업
### 1주차(1강 ~ 3강)
데이터 분석가들이 많이 쓰는 **데이터 분석 전문 도구**    
>예전에는 SPSS, SAS를 많이 사용했지만 최근에는 R 또는 python.pandas, numpy, matplotlib을 많이 사용한다.
>
> regression analysis, machine learning, text mining, 소셜 네트워크 분석, 지도 시각화, 주식 분석, 이미지 분석, 사운드 분석, 웹 애플리케이션 개발 등에 사용됨


#### 변수
변하는 수를 **변수**라고 칭한다.

```r
# a라는 변수에 1 넣음
a <- 1
# b라는 변수에 2 넣음
b <- 2
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
