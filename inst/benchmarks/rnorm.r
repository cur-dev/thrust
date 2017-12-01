n = 1e8

f = function(label, time, digits=3) cat(paste0(label, ": ", round(time, digits=digits), "\n"))

t.r = system.time(rnorm(n))
f("R", t.r[[3]])

t.fastrand = system.time(fastrand::rnorm(n))
f("\nfastrand", t.fastrand[[3]])

f("relative", t.r[[3]] / t.fastrand[[3]])



t.fastrand = system.time(fastrand::rnorm(n, type="float"))
f("\nfastrand (float)", t.fastrand[[3]])

f("relative", t.r[[3]] / t.fastrand[[3]])
