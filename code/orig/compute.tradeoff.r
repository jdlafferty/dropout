theta = seq(.01,.99,.01)
rsk = rep(0, length(theta))
n=10000
p=10
s=3
for (i in 1:length(theta)) {
  out = grad.drop(n,  p, s, sigma=.5, rho=.2, theta=theta[i], T=10, seed=11)
  rsk[i] = out$risk
}




