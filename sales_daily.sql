SELECT
  date_date,
  ROUND(SUM(turnover), 2) AS daily_turnover,
  ROUND(SUM(turnover - purchase_cost), 2) AS daily_margin
FROM `course17.gwz_sales_17`
GROUP BY date_date
ORDER BY date_date;