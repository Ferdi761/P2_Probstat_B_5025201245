#no. 1
org.ke = c(seq(1:9))
oksigen.bfr = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
oksigen.aft = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
data = data.frame(org.ke,oksigen.sblm, oksigen.aft)
n = 9

#a
selisih = data$oksigen.aft - data$oksigen.bfr
cat("Standar deviasi selisih pasangan pengamatan : ")
standardev = sd(selisih)
standardev

#b
miu = 0
xbar = mean(selisih)
tstastistik =( (xbar - miu) / (standardev / sqrt(n)))
pvalue = 2 * pt(-abs(tstastistik), df=n-1)
pvalue


#c

t.test(x=data$oksigen.aft, y=data$oksigen.bfr,
       alternative = "two.sided",
       miu = 0, paired = TRUE, var.equal = TRUE,
       conf.level = 0.95)


#no. 2

# 2a
# Setuju, karena uji z menolak H0

# 2b 
tsum.test(mean.x=23500, sd(3900), n.x=100)