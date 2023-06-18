## ----------------------------------------------------------------------------------------------------------------------------------------
schwartz_1987_summary <- schwartz_1987 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
slaghuis_1998_summary <- slaghuis_1998 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
kéri_2002_summary <- kéri_2002 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2003_summary <- chen_2003 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
slaghuis_2004_summary <- slaghuis_2004 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2005_summary <- chen_2005 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2005_summary <- butler_2005 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
cimmer_2006_summary <- cimmer_2006 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
oDonnell_2006_summary <- oDonnell_2006 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2006_summary <- chen_2006 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009_summary <- butler_2009 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
kiss_2010_summary <- kiss_2010 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
dias_2011_summary <- dias_2011 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
calderone_2013_summary <- calderone_2013 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
cadenhead_2013_summary <- cadenhead_2013 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
shoshina_2013_summary <- shoshina_2013 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
shoshina_and_shelepin_2015_summary <- shoshina_and_shelepin_2015 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
fernandes_2018_summary <- fernandes_2018 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----------------------------------------------------------------------------------------------------------------------------------------
fernandes_2019_summary <- fernandes_2019 |> 
  select(es, se, study, calculation_statistic, calculation_data, calculation_certainty)


## ----echo=TRUE---------------------------------------------------------------------------------------------------------------------------
studies <- schwartz_1987_summary |>
  bind_rows(slaghuis_1998_summary) |>
  bind_rows(kéri_2002_summary) |>
  bind_rows(chen_2003_summary) |>
  bind_rows(slaghuis_2004_summary) |>
  bind_rows(chen_2005_summary) |> 
  bind_rows(butler_2005_summary) |>
  bind_rows(cimmer_2006_summary) |> 
  bind_rows(oDonnell_2006_summary) |> 
  bind_rows(chen_2006_summary) |>
  bind_rows(butler_2009_summary) |>
  bind_rows(kiss_2010_summary) |>
  bind_rows(dias_2011_summary) |>
  bind_rows(calderone_2013_summary) |>
  bind_rows(cadenhead_2013_summary) |>
  bind_rows(shoshina_2013_summary) |>
  bind_rows(shoshina_and_shelepin_2015_summary) |>
  bind_rows(fernandes_2018_summary) |>
  bind_rows(fernandes_2019_summary) |>
  select(study, es, se, calculation_statistic, calculation_data, calculation_certainty)

studies


## ----echo=TRUE---------------------------------------------------------------------------------------------------------------------------
random_meta <- metagen(TE = es, seTE = se, studlab = study, 
                    fixed = FALSE, 
                    random = TRUE, 
                    data = studies)

random_meta


## ----echo=TRUE---------------------------------------------------------------------------------------------------------------------------
summary(random_meta)


## ----echo=TRUE---------------------------------------------------------------------------------------------------------------------------
forest(random_meta)


## ----echo=TRUE---------------------------------------------------------------------------------------------------------------------------
forest(random_meta, layout= "JAMA", hetstat = FALSE, 
       xlim = c(-2, 6))


## ----------------------------------------------------------------------------------------------------------------------------------------
funnel.meta(random_meta,
            xlim = c(-0.5, 6),
            studlab = FALSE)

