# 1. baseline 
baselines <- list()
baselines$gender<- "여자"
baselines$age <- "25"
baselines$child_marry <- "자녀 있음"
baselines$origin<- "미얀마"
baselines$religion<- "종교 없음"
baselines$edulevel<- "대학교 학위 취득"
baselines$reason <- "자국 내 전쟁 발생으로 인한 피난"

# 2. formula

# 2-1. 기본 formula 
f1 <- chosen_asylum ~  gender + age + child_marry+ origin + religion + edulevel+ reason
f2 <- rating ~  gender + age + child_marry+ origin + religion + edulevel+ reason

# amce 
f1_amce <- amce(formula = f1, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                baselines=baselines) 

f2_amce <- amce(formula = f2, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                baselines=baselines) 

f3_amce <- amce(formula = f3, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                # baselines=baselines,
                respondent.varying = "RES_islam_phobia") 


f5_amce <- amce(formula = f5, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                baselines=baselines,
                respondent.varying = "RES_gender_f") 

f6_amce <- amce(formula = f6, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                baselines=baselines,
                respondent.varying = "RES_political_f") 

f7_amce <- amce(formula = f7, 
                data=asylum, 
                respondent.id="CaseID", 
                design=asylumdesign,
                baselines=baselines,
                respondent.varying = "RES_human_egal_1")

# Print summary
summary(f1_amce)

# plot
plot(f1_amce,
     xlab = "Change in Pr(Asylum seeker preferred for admission to South Korea)",
     xlim = c(-0.3, 0.3)
     )
# plot(f7_amce, 
#      xlab = "Change in Pr(Asylum seeker preferred for admission to South Korea)",
#      xlim = c(-0.3, 0.3),
#      plot.display="interaction",
#      facet.names = "RES_human_egal_1")

ggsave("f1_amce.png", dpi=1000, dev='png', height=4.5, width=8.5, units="in")

