# Learning Progress

This log tracks topics studied, exercises completed, projects developed, and areas for further improvement.

## Starting Point

**November 6, 2026**

### Existing Experience
- 10+ years of professional software development.
- JavaScript, TypeScript, React, HTML, and CSS.
- Some previous Python and SQL exposure.
- Academic background in mathematics, including calculus, linear algebra, differential equations, and statistics.

### Initial Skill Assessment
- SQL: Basic familiarity; needs a substantial refresher.
- Excel: Basic familiarity.
- Power BI: No prior experience.
- Python for data analysis: Some programming experience; needs practical development.
- Statistics: College-level foundation; needs refreshing and application.

### Learning Priorities
1. SQL fundamentals and querying.
2. Excel for data analysis.
3. Power BI and data visualization.
4. Python for data analysis.
5. Applied statistics and modeling.

### Certification Goal
Microsoft Power BI Data Analyst Associate (PL-300).

---

## Learning Sessions

## Progress

### November 6, 2026 — SQL Fundamentals 1

- Set up a dedicated PostgreSQL database (`analytics_learning`) in the existing Docker container.
- Created a fictional retail sales dataset with six records.
- Practiced `SELECT`, `FROM`, `WHERE`, `AND`, `OR`, and `ORDER BY`.
- Executed the practice script locally using PostgreSQL.
- Added the exercises to `sql/fundamentals/01-select-where-order-by.sql`.
- Committed and pushed the script to GitHub.
### November 6, 2026 — SQL Fundamentals 2

- Practiced aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.
- Created calculated columns using arithmetic expressions.
- Used column aliases to make query results easier to interpret.
- Practiced `GROUP BY` to summarize sales by product.
- Used `HAVING` to filter aggregated results.
- Calculated total units sold and revenue by product.
- Executed all exercises against the local PostgreSQL database.
- Added exercises to `sql/fundamentals/02-aggregates-group-by-having.sql`.
- Committed and pushed the script to GitHub.


### November 12, 2026 — SQL Fundamentals 3: JOINs

- Created a second table (`products`) to practice relational queries.
- Practiced INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
- Learned how JOIN conditions work using ON.
- Practiced table aliases to simplify queries.
- Used LEFT JOIN and IS NULL to identify unmatched records.
- Combined JOINs with aggregate functions, GROUP BY, HAVING, and ORDER BY.
- Executed all exercises against the local PostgreSQL database.
- Added exercises to sql/fundamentals/03-joins.sql.
