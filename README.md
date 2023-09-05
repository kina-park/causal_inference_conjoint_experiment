## What attributes causally increase or decrease korean public's support for asylum seekers?

### 1. Introduction & Literature Review 

* In 2018 when it was known that more than 500 asylum seekers from Yemen in Jeju applied for refugee status, it caused a heated controversy over the acceptance of asylum seekers and refugees in Korean society. With the elevated concerns about refugees in Korean society, yet, few studies have systematically investigated Koreans’ attitude formation towards refugees or asylum seekers. 

* In Europe, however, a significant body of research that examines the factors influencing public attitudes toward refugees or asylum seekers has been accumulated. Specifically, recent studies have shown that public attitudes toward refugees or asylum seekers differ based on the characteristics of these individuals.(Hager & Veit ,2019; Von Hermanni & Neumann ,2018). 

* What factors may explain variation in preference and support for asylum seekers? In line with recent experimental
studies, we focus on seven key asylum seeker characteristics: gender, age, marital status & children in family, country of origin, religion, education level, reason for flight. These attributes cover integrated threat theory, deservingness attributions, gender considerations, humanitarian concerns that have been prominently addressed in previous studies exploring the factors determining public's attitudes towards refugees and asylum seekers(Bansak et al., 2016; Landmann et al., 2019; Stephan et al., 1999). 

### 2. Conjoint analysis & Causal Inference

* Survey experiments are a gold standard for causal inference, specifically, conjoint analysis enables the estimation of the causal effect of multiple attributes when making multi-dimensional choices or preferences(Hainmueller et al., 2014). Therefore, it has been used for assessing the impact of candidate, immigrant attributes(Hainmueller & Hiscox, 2010; Hainmueler & Hopkins, 2012) in social scientific research. 

* Hainmueller et al. (2014) proposed "a causal estimand that can be nonparametrically identified and easily estimated from conjoint data using a fully randomized design". They use the potential outcome framework of causal inference(Neyman, 1923; Rubin, 1974) for conjoint analysis and define "a causal quntity of interest, the average marginal component effect(AMCE)"(Hainmueller et al, 2014, p.3).  
![amce](https://github.com/kina-park/Student_competency_score_classification_model_using_KoBert/assets/129723313/5ebb86c1-2ee9-47e0-bf4b-2f3591b33d66)
### 3. Research Design

* In this study, respondents were repeatedly shown paired conjoint 10 times, randomizing profile's gender, age, marital status & children in family, country of origin, religion, education level, reason for flight(full factorial design). Subsequently, they were forced to choose one of the two applicants(choice-based conjoint analysis) and to give a numerical rating to each profile that represents their degree of support for the profile(rating-based conjoint analysis). The figure below shows an example of online survey.  
![conjoint_example](https://github.com/kina-park/Student_competency_score_classification_model_using_KoBert/assets/129723313/9a414a1e-2c86-4072-87ad-b373d2d1bc4a)

* In addition, it is also analyzed that variations between subgroups in the all respondents by including interaction terms to inspect whether the causal effect of an attribute depends on the characteristics of the respondents(Hainmueller et al., 2014), which is called an average component interaction effect (ACIE). It can show effect sizes for the different groups such as gender, ideology, islamophobia etc.

* The table below shows the list of possible attribute values(attributes and levels) in the conjoint experiment. In taking into account the level of values, the unique context of a divided nation like South Korea and recent global events such as the Afghan crisis were also considered. While there were 2,304 possible combinations to create a single virtual asylum seeker profile[^scala1], the final total number of possible combinations were reduced to 1,656. Profiles that do not exist in the real world were excluded[^scala2], as randomizing attribute combinations could lead to impossible or illogical profiles.  
  
  |Treatment attribute|Values|Number of cases|
  |:------:|:---:|:---:|
  |성별|남자, 여자|2|
  |나이|25, 40, 55|3|
  |혼인 및 자녀 여부|자녀 있음, 자녀 없음(기혼), 자녀 없음(미혼)|3|
  |출신 지역 및 국가|예멘, 아프가니스탄, 북한, 미얀마|4|
  |종교|이슬람, 기독교, 불교, 종교 없음|4|
  |교육 수준|대학교 학위 취득, 대학교 학위 없음|2|
  |한국 이주 이유|자국 내 전쟁 발생으로 인한 피난,<br>정치적 박해로 인한 망명,<br>한국 유학,<br>한국에서의 취업 기회|4|

### 4. Results 

* First, we present the AMCEs for the seven attributes included in the conjoint experiment in the figure below (choice-based conjoint analysis).  
![f1_amce](https://github.com/kina-park/Student_competency_score_classification_model_using_KoBert/assets/129723313/2233c316-4205-4742-a5c5-4742b6061297)

* For gender, there is a negative impact for male asylum seekers(&beta;= -.0670, &rho;<.001) over female. With respect to age, there is a negative impact for 40 yeals old(&beta;= -.0430, &rho;<.001), 55 years old asylum seekers(&beta;= -.0737, &rho;<.001) over 25 years old.For children in family and marital status, there is a negative impact for asylum seekers who are married and have no kid(&beta;= -.0405, &rho;<.001), who never married and have no kid (&beta;= -.0429, &rho;<.001) over asylum seekers who have kids. For education level, there is a negative impact for asylum seekers without a university degree(&beta;= -.0383, &rho;<.001) as opposed to whom with a university degree. With respect to origin, there is a negative impact for asylum seekers from Yemen(&beta;= -.0684, &rho;<.001) and Afghanistan(&beta;= -.0670, &rho;<.001) over Myanmar, however, there is a positive impact for asylum seekers from North Korea(&beta;= .0889, &rho;<.001). For reason for flight, there is a negative impact for asylum seekers fleeing economic hardship(&beta;= -.1067, &rho;<.001), political persecution(&beta;= -.1066, &rho;<.001), study abroad(&beta;= -.0747, &rho;<.001) over fleeing from war. With respect to religion, there is a negative impact for muslim asylum seekers(&beta;= -.2039, &rho;<.001) over asylum seekers who don't have religion. 

* Second, we present whether these effects differ across respondents characteristic, especially islamophobia. With respect to religion of asylum seekers, there is a negative impact for muslim asylum seekers(&beta;= -.1217, &rho;<.001) over asylum seekers who don't have religion among respondents whose level of islamophbia is relatively low, however,  a negative impact for muslim asylum seekers(&beta;= -.2727, &rho;<.001) among respondents whose level of islamophbia is relatively high.  
![acie](https://github.com/kina-park/Student_competency_score_classification_model_using_KoBert/assets/129723313/5e6f9df2-664b-433f-baaf-42424dfffdf9)

