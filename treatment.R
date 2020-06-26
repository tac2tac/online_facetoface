# 0, 1に変換
i["female"] <- lapply(i["female"], gsub, pattern="男性", replacement = "0")
i["female"] <- lapply(i["female"], gsub, pattern="女性", replacement = "1")

# 1, 2, 3, 4, 5に変換
i["grade"] <- lapply(i["grade"], gsub, pattern="2年目", replacement = "2")
i["grade"] <- lapply(i["grade"], gsub, pattern="3年目", replacement = "3")
i["grade"] <- lapply(i["grade"], gsub, pattern="4年目", replacement = "4")

# 性別がその他の行を削除
k <- i[-57,]

# 順序なし因子型に変換
#j$female <- as.factor(j$female)

# 順序つき因子型に変換
if(0){
j$grade <- as.ordered(j$grade)
j$question <- as.ordered(j$question)
j$unit <- as.ordered(j$unit)
j$friends <- as.ordered(j$friends)
j$schedule <- as.ordered(j$schedule)
j$homework <- as.ordered(j$homework)
j$contents <- as.ordered(j$contents)
j$attend <- as.ordered(j$attend)
j$remark <- as.ordered(j$remark)
j$studystyle <- as.ordered(j$studystyle)
j$prefer <- as.ordered(j$prefer)
print(sapply(j, class))
}