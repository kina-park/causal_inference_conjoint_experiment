# 1. baseline 
baselines <- list()
baselines$gender<- "여자"
baselines$age <- "25"
baselines$child_marry <- "자녀 없음(기혼)"
baselines$origin<- "미얀마"
baselines$religion<- "종교 없음"
baselines$edulevel<- "대학교 학위 없음"
baselines$reason <- "한국에서의 취업 기회"

# 2. formula

# 2-1. 기본 formula 
f1 <- chosen_asylum ~  gender + age + child_marry+ origin + religion + edulevel+ reason
f2 <- rating ~  gender + age + child_marry+ origin + religion + edulevel+ reason

# 2-2. respondent varying formula

# 변수 grouping 
asylum$RES_gender_f[asylum$RES_gender == 1] <- "male"
asylum$RES_gender_f[asylum$RES_gender == 2] <- "female"
asylum$RES_gender_f <- factor(asylum$RES_gender_f, levels=c("male","female"))

asylum$RES_political_f[asylum$RES_political %in% c(1, 2)] <- "liberal"
asylum$RES_political_f[asylum$RES_political == 3] <- "moderate"
asylum$RES_political_f[asylum$RES_political %in% c(4, 5)] <- "conservative"
asylum$RES_political_f <- factor(asylum$RES_political_f, levels=c("liberal","moderate", "conservative"))

# 예시 변수 이름 목록
variable_names <- c("RES_gender_f", "RES_age", "RES_political_f", "RES_human_egal_1", "RES_islam_phobia", "RES_income", "RES_class")

# 빈 리스트 생성
amce_list <- list()

# 반복문을 사용하여 모델 생성
for (variable in variable_names) {
  formula <- paste("chosen_asylum ~ gender:", variable, " + age:", variable, " + child_marry:", variable,
                   " + origin:", variable, " + religion:", variable, " + edulevel:", variable, " + reason:", variable, sep = "")
  amce_model <- amce(formula = as.formula(formula), 
                     data = asylum, 
                     respondent.id = "CaseID", 
                     design = asylumdesign,
                     baselines = baselines,
                     respondent.varying = variable)
  amce_list[[variable]] <- amce_model
}

# summary 
summary(amce_list[[5]])

# plot
plot(amce_list[[5]], 
     xlab = "Change in Pr(Asylum seeker preferred for admission to South Korea)",
     xlim = c(-0.3, 0.3),
     plot.display="interaction")

ggsave("acie.png", dpi=1000, dev='png', height=4.5, width=8.5, units="in")