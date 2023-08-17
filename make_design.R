# attribute_list

attribute_list <- list()
attribute_list[["gender"]] <- c("여자","남자")
attribute_list[["age"]] <- c(25, 40, 55)
attribute_list[["child_marry"]] <- c('자녀 있음','자녀 없음(미혼)','자녀 없음(기혼)')
attribute_list[["origin"]] <- c('예멘','아프가니스탄','미얀마','북한')
attribute_list[["religion"]] <- c('이슬람','불교','종교 없음','기독교')
attribute_list[["edulevel"]] <- c('대학교 학위 취득','대학교 학위 없음')
attribute_list[["reason"]] <- c('한국에서의 취업 기회','정치적 박해로 인한 망명','자국 내 전쟁 발생으로 인한 피난', '한국 유학')


# constraint_list 

constraint_list <- list()
constraint_list[[1]] <- list()
constraint_list[[1]][["origin"]] <- c('예멘','아프가니스탄')
constraint_list[[1]][["religion"]] <- c('불교')

constraint_list[[2]] <- list()
constraint_list[[2]][["origin"]] <- c('북한')
constraint_list[[2]][["religion"]] <- c('이슬람')

constraint_list[[3]] <- list()
constraint_list[[3]][["origin"]] <- c('북한')
constraint_list[[3]][["reason"]] <- c('자국 내 전쟁 발생으로 인한 피난', '한국 유학')

# design 

asylumdesign <- makeDesign(type='constraints', attribute.levels=attribute_list,
                           constraints=constraint_list)
