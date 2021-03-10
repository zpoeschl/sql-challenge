# sql-challenge
This is the ninth assignment for UMN Data Analytics bootcamp. All work completed by Zoe Poeschl.

# INSTRUCTIONS

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering
2. Data Analysis

## Data Modeling
Inspect the CSVs and sketch out an ERD of the tables.

## Data Engineering
- Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

    - For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
    - Be sure to create tables in the correct order to handle foreign keys.

- Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

## Data Analysis
Once you have a complete database, do the following:

- List the following details of each employee: employee number, last name, first name, sex, and salary.
- List first name, last name, and hire date for employees who were hired in 1986.
- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
- List the department of each employee with the following information: employee number, last name, first name, and department name.
- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
- List all employees in the Sales department, including their employee number, last name, first name, and department name.
- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

# Bonus (Optional)
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:


Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research.

- Consult SQLAlchemy documentation for more information.
- If using a password, do not upload your password to your GitHub repository. See https://www.youtube.com/watch?v=2uaTPmNvH0I and https://help.github.com/en/github/using-git/ignoring-files for more information.

1. Create a histogram to visualize the most common salary ranges for employees.
2. Create a bar chart of average salary by title.

# Submission

- Create an image file of your ERD.
- Create a .sql file of your table schemata.
- Create a .sql file of your queries.
- (Optional) Create a Jupyter Notebook of the bonus analysis.
- Create and upload a repository with the above files to GitHub and post a link on BootCamp Spot.
- Ensure your repository has regular commits (i.e. 20+ commits) and a thorough README.md file