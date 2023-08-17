# 데이터 불러오기

library(readr)
asylum <- read_csv("asylum_choice_rating_survey.csv")

# 데이터 요인, 수준 설정

asylum$gender      <- factor(asylum$gender, 
                             levels=c("여자","남자"))

asylum$age         <- factor(asylum$age, 
                             levels=c(25, 40, 55))

asylum$child_marry <- factor(asylum$child_marry, 
                             levels=c('자녀 있음','자녀 없음(미혼)','자녀 없음(기혼)'))

asylum$origin      <- factor(asylum$origin, 
                             levels=c('예멘','아프가니스탄','미얀마','북한'))

asylum$religion    <- factor(asylum$religion, 
                             levels=c('이슬람','불교','종교 없음','기독교'))

asylum$edulevel    <- factor(asylum$edulevel, 
                             levels=c('대학교 학위 취득','대학교 학위 없음'))

asylum$reason      <- factor(asylum$reason, 
                             levels=c('한국에서의 취업 기회','정치적 박해로 인한 망명','자국 내 전쟁 발생으로 인한 피난', '한국 유학'))
