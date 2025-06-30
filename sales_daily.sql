SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_turnover,
  ROUND(SUM(turnover_before_promo - turnover), 2) AS daily_discount
FROM `course17.gwz_sales_17`
GROUP BY date_date
ORDER BY date_date;