with revnue AS
(
    SELECT 
        TO_CHAR(sale_date, 'YYYY Month') as months,
        sum(total) as revenue,
        lag(sum(total)) OVER
                            (ORDER BY DATE_TRUNC('month', sale_date)) AS revenue_previous_month
                                                     
    FROM 
        sales
    GROUP BY
        DATE_TRUNC('month', sale_date), TO_CHAR(sale_date, 'YYYY Month')
    ORDER BY 
        DATE_TRUNC('month', sale_date)
)
SELECT months,
       (revenue-revenue_previous_month)/revenue*100 as Growth_percnt
FROM revnue        