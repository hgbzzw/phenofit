context("season3y")
source('helper_MOD13A1.R')

# lambda   <- init_lambda(INPUT$y) # lambda for whittaker
# param = listk(
#     INPUT, nptperyear,
#     FUN = whitsmw2, wFUN = wBisquare, iters = 2,
#     lambda,
#     IsPlot = IsPlot, plotdat = d,
#     south = sp$lat[1] < 0,
#     rymin_less = 0.6, ypeak_min = ypeak_min,
#     max_MaxPeaksperyear =2.5, max_MinPeaksperyear = 3.5
# )

test_that("season_3y works", {
    expect_silent(
        brks2 <- season_3y(INPUT, nptperyear, south = sp$lat[1] < 0, FUN = whitsmw2,
            plotdat = d,
            IsPlot = IsPlot, print = F, partial = F)
    )
})
